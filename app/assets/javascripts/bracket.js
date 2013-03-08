$.get('/getgames.json', function(data) {
    ko.applyBindings(new doAction(data));
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
            // used for debugging
            // remove the following line if we're done debugging
            window.pickData = allPicks
            $.ajax({
                type: "POST",
                url: "/brackets.json",
                data: { bracket: allPicks },
                headers: {
                    'X-Transaction': 'POST Example',
                    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
                }
            }).done(function( msg ) {
              if (eval(msg)) {
                console.log("bracket was created!");
            } else {
                alert("there was a problem :(");
            }
        });
            return;
        }

        var bracket;
        if ((bracket = self.complete(type)) !== false) {
            if (confirm("Would you like to go to the next level?") === true) {
                window.curr_level = window.curr_level + 1;
                $('h1#bracket_instr').text("Make your picks for round "+window.curr_level+":");
                if(window.curr_level == 2) {
                    window.bracket_name = $("#bracket_name").val();
                    $("#bracket_naming").hide();
                    $("#bracket_name").hide();
                }
                $('#level' + type).fadeOut();
                self.levels[+type+1](bracket);
                $('#level' + (+type+1)).fadeIn();
                $('html, body').animate({scrollTop:0}, 'fast');
            }
        }
    };

}


// used for debugging. You can call this method in console to submit
// the data again without having to start over
// remove the following method if we're done debugging
function submitPicks() {
    $.ajax({
        type: "POST",
        url: "/brackets.json",
        data: { bracket: window.pickData },
        headers: {
            'X-Transaction': 'POST Example',
            'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        }
    }).done(function( msg ) {
        if (eval(msg)) {
            console.log("bracket was created!");
        } else {
            alert("there was a problem :(");
        }
    });
}
