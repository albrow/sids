class AddRegionAndMatchIdToGames < ActiveRecord::Migration
  def up
		add_column :games, :region, :string
		add_column :games, :match_id, :integer

		Game.where(:team1_id => 64).first.update_attributes(:match_id => 1)
  	Game.where(:team1_id => 2).first.update_attributes(:match_id => 2)
  	Game.where(:team1_id => 4).first.update_attributes(:match_id => 3)
  	Game.where(:team1_id => 6).first.update_attributes(:match_id => 4)
  	Game.where(:team1_id => 8).first.update_attributes(:match_id => 5)
  	Game.where(:team1_id => 10).first.update_attributes(:match_id => 6)
  	Game.where(:team1_id => 12).first.update_attributes(:match_id => 7)
  	Game.where(:team1_id => 14).first.update_attributes(:match_id => 8)
  	Game.where(:team1_id => 16).first.update_attributes(:match_id => 9)
  	Game.where(:team1_id => 18).first.update_attributes(:match_id => 10)
  	Game.where(:team1_id => 20).first.update_attributes(:match_id => 11)
  	Game.where(:team1_id => 22).first.update_attributes(:match_id => 12)
  	Game.where(:team1_id => 24).first.update_attributes(:match_id => 13)
  	Game.where(:team1_id => 26).first.update_attributes(:match_id => 14)
  	Game.where(:team1_id => 28).first.update_attributes(:match_id => 15)
  	Game.where(:team1_id => 30).first.update_attributes(:match_id => 16)
  	Game.where(:team1_id => 32).first.update_attributes(:match_id => 17)
  	Game.where(:team1_id => 34).first.update_attributes(:match_id => 18)
  	Game.where(:team1_id => 36).first.update_attributes(:match_id => 19)
  	Game.where(:team1_id => 38).first.update_attributes(:match_id => 20)
  	Game.where(:team1_id => 40).first.update_attributes(:match_id => 21)
  	Game.where(:team1_id => 42).first.update_attributes(:match_id => 22)
  	Game.where(:team1_id => 44).first.update_attributes(:match_id => 23)
  	Game.where(:team1_id => 46).first.update_attributes(:match_id => 24)
  	Game.where(:team1_id => 48).first.update_attributes(:match_id => 25)
  	Game.where(:team1_id => 50).first.update_attributes(:match_id => 26)
  	Game.where(:team1_id => 52).first.update_attributes(:match_id => 27)
  	Game.where(:team1_id => 54).first.update_attributes(:match_id => 28)
  	Game.where(:team1_id => 56).first.update_attributes(:match_id => 29)
  	Game.where(:team1_id => 58).first.update_attributes(:match_id => 30)
  	Game.where(:team1_id => 60).first.update_attributes(:match_id => 31)
  	Game.where(:team1_id => 62).first.update_attributes(:match_id => 32)

  end

  def down
		remove_column :games, :region
		remove_column :games, :match_id
  end
end