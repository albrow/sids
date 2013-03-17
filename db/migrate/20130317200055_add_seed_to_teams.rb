class AddSeedToTeams < ActiveRecord::Migration
  def up
  	add_column :teams, :seed, :integer

		Team.find(1).update_attributes :seed => 1
		Team.find(2).update_attributes :seed => 16
		Team.find(3).update_attributes :seed => 8
		Team.find(4).update_attributes :seed => 9
		Team.find(5).update_attributes :seed => 5
		Team.find(6).update_attributes :seed => 12
		Team.find(7).update_attributes :seed => 4
		Team.find(8).update_attributes :seed => 13
		Team.find(9).update_attributes :seed => 6
		Team.find(10).update_attributes :seed => 11
		Team.find(11).update_attributes :seed => 3
		Team.find(12).update_attributes :seed => 14
		Team.find(13).update_attributes :seed => 7
		Team.find(14).update_attributes :seed => 10
		Team.find(15).update_attributes :seed => 2
		Team.find(16).update_attributes :seed => 15
		Team.find(17).update_attributes :seed => 1
		Team.find(18).update_attributes :seed => 16
		Team.find(19).update_attributes :seed => 8
		Team.find(20).update_attributes :seed => 9
		Team.find(21).update_attributes :seed => 5
		Team.find(22).update_attributes :seed => 12
		Team.find(23).update_attributes :seed => 4
		Team.find(24).update_attributes :seed => 13
		Team.find(25).update_attributes :seed => 6
		Team.find(26).update_attributes :seed => 11
		Team.find(27).update_attributes :seed => 3
		Team.find(28).update_attributes :seed => 14
		Team.find(29).update_attributes :seed => 7
		Team.find(30).update_attributes :seed => 10
		Team.find(31).update_attributes :seed => 2
		Team.find(32).update_attributes :seed => 15
		Team.find(33).update_attributes :seed => 1
		Team.find(34).update_attributes :seed => 16
		Team.find(35).update_attributes :seed => 8
		Team.find(36).update_attributes :seed => 9
		Team.find(37).update_attributes :seed => 5
		Team.find(38).update_attributes :seed => 12
		Team.find(39).update_attributes :seed => 4
		Team.find(40).update_attributes :seed => 13
		Team.find(41).update_attributes :seed => 6
		Team.find(42).update_attributes :seed => 11
		Team.find(43).update_attributes :seed => 3
		Team.find(44).update_attributes :seed => 14
		Team.find(45).update_attributes :seed => 7
		Team.find(46).update_attributes :seed => 10
		Team.find(47).update_attributes :seed => 2
		Team.find(48).update_attributes :seed => 15
		Team.find(49).update_attributes :seed => 1
		Team.find(50).update_attributes :seed => 16
		Team.find(51).update_attributes :seed => 8
		Team.find(52).update_attributes :seed => 9
		Team.find(53).update_attributes :seed => 5
		Team.find(54).update_attributes :seed => 12
		Team.find(55).update_attributes :seed => 4
		Team.find(56).update_attributes :seed => 13
		Team.find(57).update_attributes :seed => 6
		Team.find(58).update_attributes :seed => 11
		Team.find(59).update_attributes :seed => 3
		Team.find(60).update_attributes :seed => 14
		Team.find(61).update_attributes :seed => 7
		Team.find(62).update_attributes :seed => 10
		Team.find(63).update_attributes :seed => 2
		Team.find(64).update_attributes :seed => 15
		
  end

  def down
  	remove_column :teams, :seed
  end
end
