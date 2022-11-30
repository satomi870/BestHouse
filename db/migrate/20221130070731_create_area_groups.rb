class CreateAreaGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :area_groups do |t|

       t.string :area_group_name,  null: false

      t.timestamps
    end
  end
end
