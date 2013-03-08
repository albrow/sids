class Bracket < ActiveRecord::Base
  attr_accessible :name, :user_id
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
    []
  end

end
