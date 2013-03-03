class Bracket < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :user
  has_many :predictions, :dependent => :destroy


	def self.create_from_json json
		require "colored"
		data = ActiveSupport::JSON.decode(json)
		bracket = Bracket.new
		## This is only a temporary name. The user should be able to input this!
		bracket.name = "Test Bracket"
		(1..6).each do |index|
			round = data[index.to_s]
			puts round.inspect
			round.each do |match|
				pred = Prediction.new
				pred.bracket = bracket
				pred.round_id = index
				pred.team = Team.find(match["winner"]["id"])
				pred.save
			end
		end
		return bracket
	end

end
