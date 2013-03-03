class Game < ActiveRecord::Base
  attr_accessible :team1, :team1_score, :team2, :team2_score, :winner, :round_id
	belongs_to :team1, :foreign_key => "team1_id", :class_name => "Team"
	belongs_to :team2, :foreign_key => "team2_id", :class_name => "Team"
	belongs_to :winner, :foreign_key => "winner_id", :class_name => "Team"
end
