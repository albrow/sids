$.get('/getgames.json', function(data) {
    ko.applyBindings(new doAction(data));
});

function doAction(json) {

    console.log(json);

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

    this.setWinner = function(data, winner, type) {
        data.winner(winner);
        if (+type+1 === 7) {
            $('#level' + type).fadeOut();
            levels['7'].push(winner);
            allPicks = ko.toJSON(self.levels);
            return;
        }

        var bracket;
        if ((bracket = self.complete(type)) !== false) {
            if (confirm("Would you like to go to the next level?") === true) {
                $('#level' + type).fadeOut();
                self.levels[+type+1](bracket);
                $('#level' + (+type+1)).fadeIn();
            }
        }
    };

}