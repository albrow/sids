class FixTeamIdsInGame < ActiveRecord::Migration
	
	# a sensible way to insert the teams is so that match1 is between team ids 1 and 2,
	# match 2 is between team ids 3 and 4, etc.
	# this migration fixes the first round games to match that pattern, making it easy for us later on.

  def up
		Game.destroy_all
		Game.create :team1 => Team.find(1), :team2 => Team.find(2), :round_id => 0, :match_id => 1
  	Game.create :team1 => Team.find(3), :team2 => Team.find(4), :round_id => 0, :match_id => 2
  	Game.create :team1 => Team.find(5), :team2 => Team.find(6), :round_id => 0, :match_id => 3
  	Game.create :team1 => Team.find(7), :team2 => Team.find(8), :round_id => 0, :match_id => 4
  	Game.create :team1 => Team.find(9), :team2 => Team.find(10), :round_id => 0, :match_id => 5
  	Game.create :team1 => Team.find(11), :team2 => Team.find(12), :round_id => 0, :match_id => 6
  	Game.create :team1 => Team.find(13), :team2 => Team.find(14), :round_id => 0, :match_id => 7
  	Game.create :team1 => Team.find(15), :team2 => Team.find(16), :round_id => 0, :match_id => 8
  	Game.create :team1 => Team.find(17), :team2 => Team.find(18), :round_id => 0, :match_id => 9
  	Game.create :team1 => Team.find(19), :team2 => Team.find(20), :round_id => 0, :match_id => 10
  	Game.create :team1 => Team.find(21), :team2 => Team.find(22), :round_id => 0, :match_id => 11
  	Game.create :team1 => Team.find(23), :team2 => Team.find(24), :round_id => 0, :match_id => 12
  	Game.create :team1 => Team.find(25), :team2 => Team.find(26), :round_id => 0, :match_id => 13
  	Game.create :team1 => Team.find(27), :team2 => Team.find(28), :round_id => 0, :match_id => 14
  	Game.create :team1 => Team.find(29), :team2 => Team.find(30), :round_id => 0, :match_id => 15
  	Game.create :team1 => Team.find(31), :team2 => Team.find(32), :round_id => 0, :match_id => 16
  	Game.create :team1 => Team.find(33), :team2 => Team.find(34), :round_id => 0, :match_id => 17
  	Game.create :team1 => Team.find(35), :team2 => Team.find(36), :round_id => 0, :match_id => 18
  	Game.create :team1 => Team.find(37), :team2 => Team.find(38), :round_id => 0, :match_id => 19
  	Game.create :team1 => Team.find(39), :team2 => Team.find(40), :round_id => 0, :match_id => 20
  	Game.create :team1 => Team.find(41), :team2 => Team.find(42), :round_id => 0, :match_id => 21
  	Game.create :team1 => Team.find(43), :team2 => Team.find(44), :round_id => 0, :match_id => 22
  	Game.create :team1 => Team.find(45), :team2 => Team.find(46), :round_id => 0, :match_id => 23
  	Game.create :team1 => Team.find(47), :team2 => Team.find(48), :round_id => 0, :match_id => 24
  	Game.create :team1 => Team.find(49), :team2 => Team.find(50), :round_id => 0, :match_id => 25
  	Game.create :team1 => Team.find(51), :team2 => Team.find(52), :round_id => 0, :match_id => 26
  	Game.create :team1 => Team.find(53), :team2 => Team.find(54), :round_id => 0, :match_id => 27
  	Game.create :team1 => Team.find(55), :team2 => Team.find(56), :round_id => 0, :match_id => 28
  	Game.create :team1 => Team.find(57), :team2 => Team.find(58), :round_id => 0, :match_id => 29
  	Game.create :team1 => Team.find(59), :team2 => Team.find(60), :round_id => 0, :match_id => 30
  	Game.create :team1 => Team.find(61), :team2 => Team.find(62), :round_id => 0, :match_id => 31
  	Game.create :team1 => Team.find(63), :team2 => Team.find(64), :round_id => 0, :match_id => 32
  end

  def down
    Game.destroy_all
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
end
