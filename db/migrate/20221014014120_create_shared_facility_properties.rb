class CreateSharedFacilityProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :shared_facility_properties do |t|

      t.integer :property_id,         null: false
      t.integer :shared_facility_id,  null: false

      t.timestamps
    end
  end
end
