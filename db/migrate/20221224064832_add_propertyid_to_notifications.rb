class AddPropertyidToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :property_id, :integer
  end
end
