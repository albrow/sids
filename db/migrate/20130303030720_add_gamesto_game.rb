class AddGamestoGame < ActiveRecord::Migration
  def up
  	Game.create :team1 => 64, :team2 => 1, :round_id => 1
  	Game.create :team1 => 2, :team2 => 3, :round_id => 1
  	Game.create :team1 => 4, :team2 => 5, :round_id => 1
  	Game.create :team1 => 6, :team2 => 7, :round_id => 1
  	Game.create :team1 => 8, :team2 => 9, :round_id => 1
  	Game.create :team1 => 10, :team2 => 11, :round_id => 1
  	Game.create :team1 => 12, :team2 => 13, :round_id => 1
  	Game.create :team1 => 14, :team2 => 15, :round_id => 1
  	Game.create :team1 => 16, :team2 => 17, :round_id => 1
  	Game.create :team1 => 18, :team2 => 19, :round_id => 1
  	Game.create :team1 => 20, :team2 => 21, :round_id => 1
  	Game.create :team1 => 22, :team2 => 23, :round_id => 1
  	Game.create :team1 => 24, :team2 => 25, :round_id => 1
  	Game.create :team1 => 26, :team2 => 27, :round_id => 1
  	Game.create :team1 => 28, :team2 => 29, :round_id => 1
  	Game.create :team1 => 30, :team2 => 31, :round_id => 1
  	Game.create :team1 => 32, :team2 => 33, :round_id => 1
  	Game.create :team1 => 34, :team2 => 35, :round_id => 1
  	Game.create :team1 => 36, :team2 => 37, :round_id => 1
  	Game.create :team1 => 38, :team2 => 39, :round_id => 1
  	Game.create :team1 => 40, :team2 => 41, :round_id => 1
  	Game.create :team1 => 42, :team2 => 43, :round_id => 1
  	Game.create :team1 => 44, :team2 => 45, :round_id => 1
  	Game.create :team1 => 46, :team2 => 47, :round_id => 1
  	Game.create :team1 => 48, :team2 => 49, :round_id => 1
  	Game.create :team1 => 50, :team2 => 51, :round_id => 1
  	Game.create :team1 => 52, :team2 => 53, :round_id => 1
  	Game.create :team1 => 54, :team2 => 55, :round_id => 1
  	Game.create :team1 => 56, :team2 => 57, :round_id => 1
  	Game.create :team1 => 58, :team2 => 59, :round_id => 1
  	Game.create :team1 => 60, :team2 => 61, :round_id => 1
  	Game.create :team1 => 62, :team2 => 63, :round_id => 1
  end

  def down
  end
end