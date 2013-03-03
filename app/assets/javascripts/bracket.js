function ModelView() {
    var json = [ // this is what would we be pulled in via jquery ajax
      [
         {
            "id":0,
            "name":"Louisville",
            "image":"images/louisville_logo.jpg"
         },
         {
            "id":1,
            "name":"Alabama State",
            "image":"images/alabamastate_logo.jpg"
         }
      ],
      [
         {
            "id":2,
            "name":"Ohio State",
            "image":"images/ohiostate_logo.jpg"
         },
         {
            "id":3,
            "name":"Siena",
            "image":"images/siena_logo.jpg"
         }
      ],
      [
         {
            "id":4,
            "name":"Utah",
            "image":"images/utah_logo.jpg"
         },
         {
            "id":5,
            "name":"Arizona",
            "image":"images/arizona_logo.jpg"
         }
      ],
      [
         {
            "id":6,
            "name":"Wake Forest",
            "image":"imags/wakeforest_logo.jpg"
         },
         {
            "id":7,
            "name":"Cleveland State",
            "image":"images/clevelandstate_logo.jpg"
         }
      ],
      [
         {
            "id":8,
            "name":"West Virginia",
            "image":"images/westvirginia_logo.jpg"
         },
         {
            "id":9,
            "name":"Dayton",
            "image":"images/dayton_logo.jpg"
         }
      ],
      [
         {
            "id":10,
            "name":"Kansas",
            "image":"images/kansas_logo.jpg"
         },
         {
            "id":11,
            "name":"North Dakota State",
            "image":"images/ndstate_logo.jpg"
         }
      ],
      [
         {
            "id":12,
            "name":"Boston College",
            "image":"images/bostoncollege_logo.jpg"
         },
         {
            "id":13,
            "name":"USC",
            "image":"images/USC_logo.jpg"
         }
      ],
      [
         {
            "id":14,
            "name":"Michigan State",
            "image":"images/michiganstate_logo.jpg"
         },
         {
            "id":15,
            "name":"Robert Morris",
            "image":"images/robertmorris_logo.jpg"
         }
      ],
      [
         {
            "id":16,
            "name":"Connecticut",
            "image":"images/connecticut_logo.jpg"
         },
         {
            "id":17,
            "name":"Chattanooga",
            "image":"images/chattanooga_logo.jpg"
         }
      ],
      [
         {
            "id":18,
            "name":"BYU",
            "image":"images/BYU_logo.jpg"
         },
         {
            "id":19,
            "name":"Texas A&M",
            "image":"images/texasAM_logo.jpg"
         }
      ],
      [
         {
            "id":20,
            "name":"Purdue",
            "image":"images/purdue_logo.jpg"
         },
         {
            "id":21,
            "name":"Northern Iowa",
            "image":"images/northerniowa_logo.png"
         }
      ],
      [
         {
            "id":22,
            "name":"Washington",
            "image":"images/washington_logo.jpg"
         },
         {
            "id":23,
            "name":"Mississippi State",
            "image":"images/mississippistate_logo.jpg"
         }
      ],
      [
         {
            "id":24,
            "name":"Marquette",
            "image":"images/marquette_logo.jpg"
         },
         {
            "id":25,
            "name":"Utah State",
            "image":"images/utahstate_logo.jpg"
         }
      ],
      [
         {
            "id":26,
            "name":"Missouri",
            "image":"images/missouri_logo.jpg"
         },
         {
            "id":27,
            "name":"Cornell",
            "image":"images/cornell_logo.jpg"
         }
      ],
      [
         {
            "id":28,
            "name":"California",
            "image":"images/california_logo.jpg"
         },
         {
            "id":29,
            "name":"Maryland",
            "image":"images/maryland_logo.jpg"
         }
      ],
      [
         {
            "id":30,
            "name":"Memphis",
            "image":"images/memphis_logo.jpg"
         },
         {
            "id":31,
            "name":"Cal State Northridge",
            "image":"images/calstnorthridge_logo.jpg"
         }
      ],
      [
         {
            "id":32,
            "name":"Pittsburgh",
            "image":"images/pittsburgh_logo.jpg"
         },
         {
            "id":33,
            "name":"East Tennessee State",
            "image":"images/easttenneseest_logo.jpg"
         }
      ],
      [
         {
            "id":34,
            "name":"Oklahoma State",
            "image":"images/oklahomast_logo.jpg"
         },
         {
            "id":35,
            "name":"Tennessee",
            "image":"images/tennessee_logo.jpg"
         }
      ],
      [
         {
            "id":36,
            "name":"Florida State",
            "image":"images/floridast_logo.jpg"
         },
         {
            "id":37,
            "name":"Wisconsin",
            "image":"images/winsconsin_logo.jpg"
         }
      ],
      [
         {
            "id":38,
            "name":"Xavier",
            "image":"images/xavier_logo.jpg"
         },
         {
            "id":39,
            "name":"Portland State",
            "image":"images/portlandst_logo.jpg"
         }
      ],
      [
         {
            "id":40,
            "name":"UCLA",
            "image":"images/UCLA_logo.jpg"
         },
         {
            "id":41,
            "name":"VCU",
            "image":"images/VCU_logo.jpg   "
         }
      ],
      [
         {
            "id":42,
            "name":"Villanova",
            "image":"images/villanova_logo.jpg"
         },
         {
            "id":43,
            "name":"American",
            "image":"images/american_logo.jpg"
         }
      ],
      [
         {
            "id":44,
            "name":"Texas",
            "image":"images/texas_logo.jpg"
         },
         {
            "id":45,
            "name":"Minnesota",
            "image":"images/minnesota_logo.jpg"
         }
      ],
      [
         {
            "id":46,
            "name":"Duke",
            "image":"images/duke_logo.jpg"
         },
         {
            "id":47,
            "name":"Binghamton",
            "image":"images/binghamton_logo.jpg"
         }
      ],
      [
         {
            "id":48,
            "name":"North Carolina",
            "image":"images/northcarolina_logo.jpg"
         },
         {
            "id":49,
            "name":"Radford",
            "image":"images/radford_logo.jpg"
         }
      ],
      [
         {
            "id":50,
            "name":"LSU",
            "image":"images/LSU_logo.jpg"
         },
         {
            "id":51,
            "name":"Butler",
            "image":"images/butler_logo.jpg"
         }
      ],
      [
         {
            "id":52,
            "name":"Illinois",
            "image":"images/illinois_logo.jpg"
         },
         {
            "id":53,
            "name":"West Kentucky",
            "image":"images/westkentucky_logo.jpg"
         }
      ],
      [
         {
            "id":54,
            "name":"Gonzaga",
            "image":"images/gonzaga_logo.jpg"
         },
         {
            "id":55,
            "name":"Akron",
            "image":"images/akron_logo.jpg"
         }
      ],
      [
         {
            "id":56,
            "name":"Arizona State",
            "image":"images/arizonastate_logo.jpg"
         },
         {
            "id":57,
            "name":"Temple",
            "image":"images/temple_logo.jpg"
         }
      ],
      [
         {
            "id":58,
            "name":"Syracuse",
            "image":"images/syracuse_logo.jpg"
         },
         {
            "id":59,
            "name":"Stephen Faustin",
            "image":"images/stephenfaustin_logo.jpg"
         }
      ],
      [
         {
            "id":60,
            "name":"Clemson",
            "image":"images/clemson_logo.jpg"
         },
         {
            "id":61,
            "name":"Michigan",
            "image":"images/michigan_logo.jpg"
         }
      ],
      [
         {
            "id":62,
            "name":"Oklahoma",
            "image":"images/oklahoma_logo.jpg"
         },
         {
            "id":63,
            "name":"Morgan State",
            "image":"images/morganst_logo.jpg"
         }
      ]
    ];

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

$(document).ready(function() {
    ko.applyBindings(new ModelView());
});