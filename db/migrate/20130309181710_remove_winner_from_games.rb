class RemoveWinnerFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :winner_id
  end
end
