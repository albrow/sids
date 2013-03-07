class ChangeGamesToStartAtRound0 < ActiveRecord::Migration
  def up
  	Game.where(:round_id => 1).each do |g|
			g.round_id = 0
			g.save
  	end
  end

  def down
  	Game.where(:round_id => 0).each do |g|
			g.round_id = 1
			g.save
  	end
  end
end
