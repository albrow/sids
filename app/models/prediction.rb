class Prediction < ActiveRecord::Base

	attr_accessible :bracket_id, :round_id, :winner_id, :region, :match_id
	belongs_to :bracket
	belongs_to :winner, :foreign_key => "winner_id", :class_name => "Team"

	before_save :set_region

	scope :region, lambda { |r| where(:region => r) }
	scope :match, lambda { |m| where(:match_id => m) }
	scope :round, lambda { |r| where(:round_id => r) }

	def set_region
		require "regions" # lib/regions.rb
		self.region = Regions::RegionsHelper.get_region self.match_id
	end

	def set_region!
		self.set_region
		self.save
	end
	
end
