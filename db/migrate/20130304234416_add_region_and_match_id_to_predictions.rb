class AddRegionAndMatchIdToPredictions < ActiveRecord::Migration
   def up
		add_column :predictions, :region, :string
		add_column :predictions, :match_id, :integer
  end

  def down
		remove_column :predictions, :region
		remove_column :predictions, :match_id
  end
end
