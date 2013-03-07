class EditPredictions < ActiveRecord::Migration
  def up
  	rename_column(:predictions, :team_id, :winner_id)
  end

  def down
  	rename_column(:predictions, :winner_id, :team_id)
  end
end
