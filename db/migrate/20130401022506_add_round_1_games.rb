class AddRound1Games < ActiveRecord::Migration
  def up
  	Game.find_by_match_id(1).update_attributes :team1_score => 79, :team2_score => 48
  	Game.find_by_match_id(2).update_attributes :team1_score => 84, :team2_score => 72 
  	Game.find_by_match_id(3).update_attributes :team1_score => 55, :team2_score => 68 
  	Game.find_by_match_id(4).update_attributes :team1_score => 64, :team2_score => 44 
  	Game.find_by_match_id(5).update_attributes :team1_score => 54, :team2_score => 52 
  	Game.find_by_match_id(6).update_attributes :team1_score => 65, :team2_score => 54 
  	Game.find_by_match_id(7).update_attributes :team1_score => 67, :team2_score => 63 
  	Game.find_by_match_id(8).update_attributes :team1_score => 73, :team2_score => 61 
  	Game.find_by_match_id(9).update_attributes :team1_score => 64, :team2_score => 58 
  	Game.find_by_match_id(10).update_attributes :team1_score => 55, :team2_score => 73
  	Game.find_by_match_id(11).update_attributes :team1_score => 46, :team2_score => 57
  	Game.find_by_match_id(12).update_attributes :team1_score => 61, :team2_score => 63
  	Game.find_by_match_id(13).update_attributes :team1_score => 81, :team2_score => 64
  	Game.find_by_match_id(14).update_attributes :team1_score => 62, :team2_score => 68
  	Game.find_by_match_id(15).update_attributes :team1_score => 58, :team2_score => 76
  	Game.find_by_match_id(16).update_attributes :team1_score => 95, :team2_score => 70
  	Game.find_by_match_id(17).update_attributes :team1_score => 64, :team2_score => 57
  	Game.find_by_match_id(18).update_attributes :team1_score => 78, :team2_score => 71
  	Game.find_by_match_id(19).update_attributes :team1_score => 88, :team2_score => 42
  	Game.find_by_match_id(20).update_attributes :team1_score => 71, :team2_score => 56
  	Game.find_by_match_id(21).update_attributes :team1_score => 63, :team2_score => 83
  	Game.find_by_match_id(22).update_attributes :team1_score => 79, :team2_score => 47
  	Game.find_by_match_id(23).update_attributes :team1_score => 70, :team2_score => 55
  	Game.find_by_match_id(24).update_attributes :team1_score => 68, :team2_score => 78
  	Game.find_by_match_id(25).update_attributes :team1_score => 83, :team2_score => 62
  	Game.find_by_match_id(26).update_attributes :team1_score => 72, :team2_score => 76
  	Game.find_by_match_id(27).update_attributes :team1_score => 61, :team2_score => 64
  	Game.find_by_match_id(28).update_attributes :team1_score => 81, :team2_score => 34
  	Game.find_by_match_id(29).update_attributes :team1_score => 68, :team2_score => 56
  	Game.find_by_match_id(30).update_attributes :team1_score => 59, :team2_score => 58
  	Game.find_by_match_id(31).update_attributes :team1_score => 57, :team2_score => 49
  	Game.find_by_match_id(32).update_attributes :team1_score => 78, :team2_score => 49
  end

  def down
  		Game.find_by_match_id(1).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(2).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(3).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(4).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(5).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(6).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(7).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(8).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(9).update_attributes :team1_score => nil, :team2_score => nil 
  	Game.find_by_match_id(10).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(11).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(12).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(13).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(14).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(15).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(16).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(17).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(18).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(19).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(20).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(21).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(22).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(23).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(24).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(25).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(26).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(27).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(28).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(29).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(30).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(31).update_attributes :team1_score => nil, :team2_score => nil
  	Game.find_by_match_id(32).update_attributes :team1_score => nil, :team2_score => nil
  end
end
