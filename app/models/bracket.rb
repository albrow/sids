class Bracket < ActiveRecord::Base
  attr_accessible :name, :user_id, :score
  belongs_to :user
  has_many :predictions, :dependent => :destroy


  ##
  # Create predictions for this bracket from JSON data
  def create_predictions(bracket_data)
    require "colored"
    data = ActiveSupport::JSON.decode(bracket_data)
    match_counter = 0
    predictions = 1.upto(6).map do |index|
      round = data[index.to_s]
      round.map do |match|
        match_counter += 1
        {

          round_id: index,
          match_id: match_counter,
          winner_id: match["winner"]["id"],
        }
      end
    end.flatten
    self.predictions.create(predictions)
  end

  def region r
    self.predictions.region r
  end

  def match m
    self.predictions.match m
  end

  def round r
    self.predictions.round r
  end

  ##
  # Calculates the score of the bracket using the official standings
  #
  # Points are awarded as:
  # - The four play-in games prior to the first round will not be included
  # - All incorrect predictions will result in 0 points
  # - 1 for correct prediction in round 1
  # - 2 for correct prediction in round 2
  # - 4 for correct prediction in the sweet sixteen
  # - 8 for correct prediction in the elite eight
  # - 16 for correct prediction in the final four
  # - 32 for correct prediction in the semi-finals
  # - 64 for correct prediction in the championship game
  def update_score
    games = Hash.new([])
    predictions.each do |prediction|
      key = prediction.match_id
      games[key] = {}
      games[key][:teams] = []
      games[key][:round] = prediction.round_id
      unless prediction.winner.nil?
        games[key][:teams] << prediction.winner.id
      end
    end
    Game.includes(:team1, :team2).find_each do |game|
      key = game.match_id
      unless game.winner.nil?
        games[key][:teams] << game.winner.id
      end
    end

    puts games.inspect

    score = 0
    games.each do |key, data|
      round = games[key][:round]
      winners = games[key][:teams]
      if winners.length == 2 and winners.first == winners.last
        score += (2 ** (round))
      end
    end
    self.update_attributes :score => score
  end

end
