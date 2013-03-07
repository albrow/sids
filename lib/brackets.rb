# miscellaneous helper methods for dealing with brackets
module Brackets

	class BracketsHelper
		# returns a region based on match_id (useful for drawing the bracket)
		# these region divisions are based on the the espn.com bracket format
		# http://espn.go.com/mens-college-basketball/tournament/bracket
		def self.get_region(match_id)

			if ( ((1..8).include? match_id) || ((33..36).include? match_id) || ((49..50).include? match_id) || (match_id == 57) )

				return :south

			elsif ( ((9..16).include? match_id) || ((37..40).include? match_id) || ((51..52).include? match_id) || (match_id == 58) )

				return :east

			elsif ( ((17..24).include? match_id) || ((41..44).include? match_id) || ((53..54).include? match_id) || (match_id == 59) )

				return :west

			elsif (match_id <= 60)

				return :midwest

			elsif (match_id == 61)

				return :south_east

			elsif (match_id == 62)

				return :west_midwest

			else

				return :championship

			end
		end
	end

end