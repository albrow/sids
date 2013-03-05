class AddRegionAndMatchIdToGames < ActiveRecord::Migration
  def up
		add_column :games, :region, :string
		add_column :games, :match_id, :integer
  end

  def down
		remove_column :games, :region
		remove_column :games, :match_id
  end
end