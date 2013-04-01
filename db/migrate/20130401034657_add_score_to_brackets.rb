class AddScoreToBrackets < ActiveRecord::Migration
	def change
		add_column :brackets, :score, :integer
	end
end
