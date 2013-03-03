class GameController < ApplicationController

	def getGames
		games = Game.all
		for game in games
			team1 = Team.find(game.team1)
			team2 = Team.find(game.team2)
		end
	end

end
