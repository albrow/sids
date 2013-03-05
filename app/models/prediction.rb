class Prediction < ActiveRecord::Base
  attr_accessible :bracket_id, :round_id, :winner_id, :region, :match_id
  belongs_to :bracket
  belongs_to :winner, :foreign_key => "winner_id", :class_name => "Team"

	before_save :set_region

	def set_region
		case round_id
		when 1
			if (1..8).include? match_id
				self.region = :south
			elsif (9..16).include? match_id
				self.region = :west
			elsif (17..24).include? match_id
				self.region = :east
			else
				self.region = :midwest
			end
		when 2
			if (33..36).include? match_id
				self.region = :south
			elsif (37..40).include? match_id
				self.region = :west
			elsif (41..44).include? match_id
				self.region = :east
			else
				self.region = :midwest
			end
		when 3
			if (49..50).include? match_id
				self.region = :south
			elsif (51..52).include? match_id
				self.region = :west
			elsif (53..54).include? match_id
				self.region = :east
			else
				self.region = :midwest
			end
		when 4
			if match_id = 57
				self.region = :south
			elsif match_id = 58
				self.region = :west
			elsif match_id = 59
				self.region = :east
			else
				self.region = :midwest
			end
		when 5
			self.region = :championship
	end

end
