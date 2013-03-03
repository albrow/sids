class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :round_id
      t.integer :team1
      t.integer :team2
      t.integer :winner
      t.integer :team1_score
      t.integer :team2_score

      t.timestamps
    end
  end
end
