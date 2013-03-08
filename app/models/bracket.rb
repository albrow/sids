class Bracket < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :user
  has_many :predictions, :dependent => :destroy

  def self.create_from_json json
    require "colored"
    data = ActiveSupport::JSON.decode(json)
    bracket = Bracket.new
    match_counter = 1
    ## This is only a temporary name. The user should be able to input this!
    bracket.name = "Test Bracket"
    (1..6).each do |index|
      round = data[index.to_s]
      puts round.inspect
      round.each do |match|
        pred = Prediction.new
        pred.bracket = bracket
        pred.round_id = index
        pred.match_id = match_counter
        match_counter += 1
        pred.winner = Team.find(match["winner"]["id"])
        pred.save
      end
    end
    return bracket
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

  def score
    games = Hash.new([])
    official = Bracket.official_predictions
    (predictions + official).each do |prediction|
      key = [prediction.match_id,
             prediction.round_id]
      games[key] += [prediction.winner_id]
    end

    score = 0
    games.each do |key, winners|
      _, round = key
      if winners.length == 2 and winners.first == winners.last
        score += 2 ** (round - 1)
      end
    end
    score
  end

  def self.official_predictions
    Bracket.last.predictions
  end

end
