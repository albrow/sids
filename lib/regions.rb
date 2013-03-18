# Helper for setting the regions and region order which will be used in various places in our app.
# For example, in 2009 the order was midwest, west, east, south
# Here's how the region numbers correspond to bracket positioniong:

# regions[0] –––      ––– regions[2] #
#						   |––––––|						   #
# regions[1] –––      ––– regions[3] #


module Regions

	class RegionsHelper
		# returns a region based on match_id (useful for drawing the bracket)
		# these region divisions are based on the the espn.com bracket format
		# http://espn.go.com/mens-college-basketball/tournament/bracket

		# THESE WILL CHANGE FROM YEAR TO YEAR!!
		@@regions = ['midwest', 'west', 'south', 'east']
		@@final_four = ['midwest_west', 'south_east']
		##

		def self.get_region_order
			return @@regions
		end

		def self.get_final_four_order
			return @@final_four
		end

		def self.get_region(match_id)

			if ( ((1..8).include? match_id) || ((33..36).include? match_id) || ((49..50).include? match_id) || (match_id == 57) )

				return @@regions[0]

			elsif ( ((9..16).include? match_id) || ((37..40).include? match_id) || ((51..52).include? match_id) || (match_id == 58) )

				return @@regions[1]

			elsif ( ((17..24).include? match_id) || ((41..44).include? match_id) || ((53..54).include? match_id) || (match_id == 59) )

				return @@regions[2]

			elsif (match_id <= 60)

				return @@regions[3]

			elsif (match_id == 61)

				return @@final_four[0]

			elsif (match_id == 62)

				return @@final_four[1]

			else

				return :championship

			end
		end
	end

end