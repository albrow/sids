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

  ##
  # The official standings of the tournament will be represented as a list of
  # predictions. The winner_id of unplayed games is 0.
  def self.official_predictions
    # UNIMPLEMENTED
    Bracket.last.predictions
  end

end
