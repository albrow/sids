class AddActivationToBracket < ActiveRecord::Migration
  def change
    add_column :brackets, :active, :boolean, default: false
  end
end
