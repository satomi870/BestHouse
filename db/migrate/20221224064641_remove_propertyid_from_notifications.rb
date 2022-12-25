class RemovePropertyidFromNotifications < ActiveRecord::Migration[6.1]
  def change
    remove_column :notifications, :propertyid, :string
  end
end
