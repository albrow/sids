class Game < ActiveRecord::Base

	require "brackets" # lib/brackets.rb

  attr_accessible :team1, :team1_score, :team2, :team2_score, :winner, :round_id, :region, :match_id
	belongs_to :team1, :foreign_key => "team1_id", :class_name => "Team"
	belongs_to :team2, :foreign_key => "team2_id", :class_name => "Team"
	belongs_to :winner, :foreign_key => "winner_id", :class_name => "Team"

	before_save :set_region

	scope :region, lambda { |r| where(:region => r) }
	scope :match, lambda { |m| where(:match_id => m) }
	scope :round, lambda { |r| where(:round_id => r) }

	def set_region
		if defined(match_id)
			self.region = Brackets::BracketsHelper.get_region match_id
		end
	end


end
