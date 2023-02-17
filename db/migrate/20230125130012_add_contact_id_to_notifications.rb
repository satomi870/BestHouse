class AddContactIdToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :contact_id, :integer
  end
end
