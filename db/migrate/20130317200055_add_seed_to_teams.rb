class AddSeedToTeams < ActiveRecord::Migration
  def change
  	add_column :teams, :seed, :integer
  end
end
