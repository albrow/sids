class AddRound4Games < ActiveRecord::Migration
  def up
  	Game.create :team1 => Team.find(1), :team1_score => 85, :team2 => Team.find(47), :team2_score => 63, :round_id => 3, :match_id => 57
    Game.create :team1 => Team.find(20), :team1_score => 70, :team2 => Team.find(31), :team2_score => 66, :round_id => 3, :match_id => 58
  	Game.create :team1 => Team.find(39), :team1_score => 79, :team2 => Team.find(43), :team2_score => 59, :round_id => 3, :match_id => 59
  	Game.create :team1 => Team.find(55), :team1_score => 55, :team2 => Team.find(59), :team2_score => 39, :round_id => 3, :match_id => 60
  end

  def down
  	Game.find_by_match_id(57).destroy
  	Game.find_by_match_id(58).destroy
  	Game.find_by_match_id(59).destroy
  	Game.find_by_match_id(60).destroy
  end
end