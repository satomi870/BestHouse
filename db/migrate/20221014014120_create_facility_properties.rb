class CreateFacilityProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :facility_properties do |t|

      t.integer :property_id,         null: false
      t.integer :shared_facility_id,  null: false

      t.timestamps
    end
  end
end
