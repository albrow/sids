class AddRound6Games < ActiveRecord::Migration
  def up
  	  	Game.create :team1 => Team.find(1), :team1_score => 82, :team2 => Team.find(20), :team2_score => 76, :round_id => 5, :match_id => 63
  end

  def down
  	  	Game.find_by_match_id(63).destroy
  end
end
