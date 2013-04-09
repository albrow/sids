class AddRound5Games < ActiveRecord::Migration
  def up
  	Game.create :team1 => Team.find(1), :team1_score => 72, :team2 => Team.find(20), :team2_score => 61, :round_id => 4, :match_id => 61
    Game.create :team1 => Team.find(39), :team1_score => 70, :team2 => Team.find(55), :team2_score => 56, :round_id => 4, :match_id => 62
  end

  def down
  	Game.find_by_match_id(61).destroy
  	Game.find_by_match_id(62).destroy
  end
end
