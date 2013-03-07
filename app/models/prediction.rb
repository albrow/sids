class Prediction < ActiveRecord::Base

	attr_accessible :bracket_id, :round_id, :winner_id, :region, :match_id
	belongs_to :bracket
	belongs_to :winner, :foreign_key => "winner_id", :class_name => "Team"

	before_save :set_region

	scope :region, lambda { |r| where(:region => r) }
	scope :match, lambda { |m| where(:match_id => m) }
	scope :round, lambda { |r| where(:round_id => r) }

	def set_region
		require "brackets" # lib/brackets.rb
		self.region = Brackets::BracketsHelper.get_region self.match_id
	end

end
