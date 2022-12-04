class AddAreaGroupIdToArea < ActiveRecord::Migration[6.1]
  def change
    add_column :areas, :area_group_id, :integer
  end
end
