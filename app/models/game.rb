class Game < ActiveRecord::Base
  attr_accessible :team1, :team1_score, :team2, :team2_score, :winner
end
