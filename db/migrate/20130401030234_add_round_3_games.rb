class AddRound3Games < ActiveRecord::Migration
  def up
  	Game.create :team1_id => 1, :team1_score => 77, :team2_id => 6, :team2_score => 69, :round_id => 2, :match_id => 47
    Game.create :team1_id => 11, :team1_score => 61, :team2_id => 15, :team2_score => 71, :round_id => 2, :match_id => 48
  	Game.create :team1_id => 20, :team1_score => 72, :team2_id => 24, :team2_score => 58, :round_id => 2, :match_id => 49
  	Game.create :team1_id => 25, :team1_score => 70, :team2_id => 31, :team2_score => 73, :round_id => 2, :match_id => 50

  	Game.create :team1_id => 33, :team1_score => 85, :team2_id => 39, :team2_score => 87, :round_id => 2, :match_id => 51
  	Game.create :team1_id => 43, :team1_score => 62, :team2_id => 48, :team2_score => 50, :round_id => 2, :match_id => 52
  	Game.create :team1_id => 49, :team1_score => 50, :team2_id => 55, :team2_score => 61, :round_id => 2, :match_id => 53
  	Game.create :team1_id => 59, :team1_score => 71, :team2_id => 63, :team2_score => 61, :round_id => 2, :match_id => 54
  end

  def down
  	Game.find_by_match_id(47).destroy
  	Game.find_by_match_id(48).destroy
  	Game.find_by_match_id(49).destroy
  	Game.find_by_match_id(50).destroy
  	Game.find_by_match_id(51).destroy
  	Game.find_by_match_id(52).destroy
  	Game.find_by_match_id(53).destroy
  	Game.find_by_match_id(54).destroy
  end
end
