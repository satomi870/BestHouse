class CreateSharedFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :shared_facilities do |t|

      t.string :facility_name,  null: false
      t.string :content,        null: false
      t.string :number,         null: false

      t.timestamps
    end
  end
end
