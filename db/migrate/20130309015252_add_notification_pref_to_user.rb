class AddNotificationPrefToUser < ActiveRecord::Migration

	# if users check this box, we will notify them when they can
	# start creating brackets. (i.e. on/after Selection Sunday)

  def up
  	add_column :users, :should_notify_on_sunday, :boolean
  end

  def down
		remove_column :users, :should_notify_on_sunday
  end
end
