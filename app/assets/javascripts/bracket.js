$(function () {
    if ($('.bracket-picker').length > 0) {
        $.get('/getgames.json', function(data) {
            ko.applyBindings(new doAction(data));
        });
    }
});

function doAction(json) {

    self = this;
    this.levels = {
        '1': ko.observableArray(),
        '2': ko.observableArray(),
        '3': ko.observableArray(),
        '4': ko.observableArray(),
        '5': ko.observableArray(),
        '6': ko.observableArray(),
        '7': ko.observableArray()
    };

    json.forEach(function(item) {
        self.levels['1'].push({
            "winner": ko.observable(),
            "players": item
        });
    });

    this.complete = function(level) {
        var complete = true;
        self.levels[level]().forEach(function(item) {
            if (typeof item.winner() === "undefined") {
                complete = false;
            }
        });

        if (complete === true) {
            var count = 0;
            complete = [];
            var pair = [];
            self.levels[level]().forEach(function(item) {
                pair.push(item.winner());
                if (count % 2) {
                    complete.push({
                        "winner": ko.observable(),
                        "players": pair
                    });
                    pair = [];
                }
                count++;
            });
        }

        return complete;
    };

    window.levels = this.levels;
    window.curr_level = 1;
    window.bracket_name = "My First Bracket";

    this.setWinner = function(data, winner, type) {
        data.winner(winner);
        if (+type+1 === 7) {
            $('#level' + type).fadeOut();
            levels['7'].push(winner);
            allPicks = ko.toJSON(self.levels);
            submitPicks(allPicks).done(function (bracket) {
                window.location = "/brackets/" + bracket.id + "/payment/new";
            });
            return;
        }

        var bracket;
        if ((bracket = self.complete(type)) !== false) {
            if (curr_level === 1) {
                if ($("#bracket_name").val()) {
                    window.bracket_name = $("#bracket_name").val();
                }
                else {
                    window.bracket_name = prompt("Please enter a bracket name");
                }
                $("#bracket_naming").hide();
                $("#bracket_name").hide();
            }

            if (confirm("Would you like to go to the next round?") === true) {
                window.curr_level = window.curr_level + 1;
                $('h1#bracket_instr').text("Make your predictions for round "+window.curr_level+":");
                $('#level' + type).fadeOut();
                self.levels[+type+1](bracket);
                $('#level' + (+type+1)).fadeIn();
                $('html, body').animate({scrollTop:0}, 'fast');
            }
        }
    };

}

function submitPicks(pickData) {
    return $.ajax({
        type: "POST",
        url: "/brackets.json",
        data: {name: bracket_name, bracket: pickData},
        headers: {
            'X-Transaction': 'POST Example',
            'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        }
    });
}

function randomBracket() {
    $('.game:visible').each(function () {
        var team = Math.random() < .5 ? 0 : 1;
        $(this).children('.team').eq(team).click();
    });
    if (curr_level < 7) {
        setTimeout(randomBracket, 500);
    }
}

// used for debugging. You can call the resubmit method in console to submit
// the last data again without having to start over
// remove the following method if we're done debugging
(function () {
    var lastPicks = undefined;

    window.submitPicks = (function (original) {
        return function (pickData) {
            lastPicks = pickData;
            return original.call(this, pickData);
        }
    })(window.submitPicks);

    window.resubmit = function () {
        console.log(lastPicks);
        submitPicks(lastPicks).done(function( msg ) {
            if (msg) {
                console.log("bracket was created!");
            } else {
                alert("there was a problem :(");
            }
        });
    };
})();
