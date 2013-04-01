class AddRound2Games < ActiveRecord::Migration
  def up
  	Game.create :team1 => Team.find(1), :team1_score => 82, :team2 => Team.find(3), :team2_score => 56, :round_id => 1, :match_id => 33
    Game.create :team1 => Team.find(6), :team1_score => 74, :team2 => Team.find(7), :team2_score => 57, :round_id => 1, :match_id => 34
  	Game.create :team1 => Team.find(9), :team1_score => 48, :team2 => Team.find(11), :team2_score => 70, :round_id => 1, :match_id => 35
  	Game.create :team1 => Team.find(13), :team1_score => 50, :team2 => Team.find(15), :team2_score => 66, :round_id => 1, :match_id => 36
  	Game.create :team1 => Team.find(17), :team1_score => 70, :team2 => Team.find(20), :team2_score => 76, :round_id => 1, :match_id => 37
  	Game.create :team1 => Team.find(22), :team1_score => 74, :team2 => Team.find(24), :team2_score => 76, :round_id => 1, :match_id => 38
  	Game.create :team1 => Team.find(25), :team1_score => 74, :team2 => Team.find(28), :team2_score => 51, :round_id => 1, :match_id => 39
  	Game.create :team1 => Team.find(30), :team1_score => 75, :team2 => Team.find(31), :team2_score => 78, :round_id => 1, :match_id => 40
  	Game.create :team1 => Team.find(33), :team1_score => 70, :team2 => Team.find(35), :team2_score => 58, :round_id => 1, :match_id => 41
  	Game.create :team1 => Team.find(37), :team1_score => 53, :team2 => Team.find(39), :team2_score => 78, :round_id => 1, :match_id => 42
  	Game.create :team1 => Team.find(42), :team1_score => 64, :team2 => Team.find(43), :team2_score => 78, :round_id => 1, :match_id => 43
  	Game.create :team1 => Team.find(45), :team1_score => 71, :team2 => Team.find(48), :team2_score => 81, :round_id => 1, :match_id => 44
  	Game.create :team1 => Team.find(49), :team1_score => 58, :team2 => Team.find(52), :team2_score => 52, :round_id => 1, :match_id => 45
  	Game.create :team1 => Team.find(54), :team1_score => 60, :team2 => Team.find(55), :team2_score => 66, :round_id => 1, :match_id => 46
  	Game.create :team1 => Team.find(57), :team1_score => 72, :team2 => Team.find(59), :team2_score => 74, :round_id => 1, :match_id => 47
  	Game.create :team1 => Team.find(61), :team1_score => 59, :team2 => Team.find(63), :team2_score => 63, :round_id => 1, :match_id => 48
  end

  def down
  	Game.find_by_match_id(33).destroy
  	Game.find_by_match_id(34).destroy
  	Game.find_by_match_id(35).destroy
  	Game.find_by_match_id(36).destroy
  	Game.find_by_match_id(37).destroy
  	Game.find_by_match_id(38).destroy
  	Game.find_by_match_id(39).destroy
  	Game.find_by_match_id(40).destroy
  	Game.find_by_match_id(41).destroy
  	Game.find_by_match_id(42).destroy
  	Game.find_by_match_id(43).destroy
  	Game.find_by_match_id(44).destroy
  	Game.find_by_match_id(45).destroy
  	Game.find_by_match_id(46).destroy
  	Game.find_by_match_id(47).destroy
  	Game.find_by_match_id(48).destroy
  end
end
