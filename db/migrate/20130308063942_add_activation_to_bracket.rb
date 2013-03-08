class AddActivationToBracket < ActiveRecord::Migration
  def change
    add_column :brackets, :active, :boolean, default: 0
  end
end
