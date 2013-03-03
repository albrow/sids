class GamesController < ApplicationController

	def getGames
		@returnData = Array.new
		games = Game.all
		for game in games
			match = Array.new
			match << Team.find(game.team1.id)
			match << Team.find(game.team2.id)
			@returnData << match
		end
		respond_to do |format|
	    format.json{
	      render :json => @returnData.to_json(:only => [:id, :name, :image])
	    }
		end
	end

end
