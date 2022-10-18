class CreateRoomFacilityProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :room_facility_properties do |t|

      t.integer :property_id,         null: false
      t.integer :room_facility_id,  null: false

      t.timestamps
    end
  end
end
