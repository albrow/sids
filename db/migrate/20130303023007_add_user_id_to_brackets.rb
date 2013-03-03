class AddUserIdToBrackets < ActiveRecord::Migration
  def change
  	add_column :brackets, :user_id, :integer
    add_index  :brackets, :user_id
  end
end
