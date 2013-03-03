class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :round_id
      t.integer :bracket_id
      t.integer :team_id

      t.timestamps
    end
  end
end
