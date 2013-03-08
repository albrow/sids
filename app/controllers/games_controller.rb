class GamesController < ApplicationController

  def getGames
    matches = Game.includes(:team1, :team2).all.map do |game|
      [game.team1, game.team2]
    end
    @returnData = matches
    respond_to do |format|
      format.json{
        render :json => @returnData.to_json(:only => [:id, :name, :image])
      }
    end
  end

end
