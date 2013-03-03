class AddGamesToGame < ActiveRecord::Migration
  def up
  	Game.create :team1 => Team.find(64), :team2 => Team.find(1), :round_id => 1
  	Game.create :team1 => Team.find(2), :team2 => Team.find(3), :round_id => 1
  	Game.create :team1 => Team.find(4), :team2 => Team.find(5), :round_id => 1
  	Game.create :team1 => Team.find(6), :team2 => Team.find(7), :round_id => 1
  	Game.create :team1 => Team.find(8), :team2 => Team.find(9), :round_id => 1
  	Game.create :team1 => Team.find(10), :team2 => Team.find(11), :round_id => 1
  	Game.create :team1 => Team.find(12), :team2 => Team.find(13), :round_id => 1
  	Game.create :team1 => Team.find(14), :team2 => Team.find(15), :round_id => 1
  	Game.create :team1 => Team.find(16), :team2 => Team.find(17), :round_id => 1
  	Game.create :team1 => Team.find(18), :team2 => Team.find(19), :round_id => 1
  	Game.create :team1 => Team.find(20), :team2 => Team.find(21), :round_id => 1
  	Game.create :team1 => Team.find(22), :team2 => Team.find(23), :round_id => 1
  	Game.create :team1 => Team.find(24), :team2 => Team.find(25), :round_id => 1
  	Game.create :team1 => Team.find(26), :team2 => Team.find(27), :round_id => 1
  	Game.create :team1 => Team.find(28), :team2 => Team.find(29), :round_id => 1
  	Game.create :team1 => Team.find(30), :team2 => Team.find(31), :round_id => 1
  	Game.create :team1 => Team.find(32), :team2 => Team.find(33), :round_id => 1
  	Game.create :team1 => Team.find(34), :team2 => Team.find(35), :round_id => 1
  	Game.create :team1 => Team.find(36), :team2 => Team.find(37), :round_id => 1
  	Game.create :team1 => Team.find(38), :team2 => Team.find(39), :round_id => 1
  	Game.create :team1 => Team.find(40), :team2 => Team.find(41), :round_id => 1
  	Game.create :team1 => Team.find(42), :team2 => Team.find(43), :round_id => 1
  	Game.create :team1 => Team.find(44), :team2 => Team.find(45), :round_id => 1
  	Game.create :team1 => Team.find(46), :team2 => Team.find(47), :round_id => 1
  	Game.create :team1 => Team.find(48), :team2 => Team.find(49), :round_id => 1
  	Game.create :team1 => Team.find(50), :team2 => Team.find(51), :round_id => 1
  	Game.create :team1 => Team.find(52), :team2 => Team.find(53), :round_id => 1
  	Game.create :team1 => Team.find(54), :team2 => Team.find(55), :round_id => 1
  	Game.create :team1 => Team.find(56), :team2 => Team.find(57), :round_id => 1
  	Game.create :team1 => Team.find(58), :team2 => Team.find(59), :round_id => 1
  	Game.create :team1 => Team.find(60), :team2 => Team.find(61), :round_id => 1
  	Game.create :team1 => Team.find(62), :team2 => Team.find(63), :round_id => 1
  end

  def down
    Game.destroy_all
  end
end