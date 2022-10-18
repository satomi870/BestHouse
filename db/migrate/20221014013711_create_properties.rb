class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|

      t.integer :area_id,            null: false
      t.string :property_name,       null: false
      t.string :address,             null: false
      t.string :access,              null: false
      t.integer :rent,               null: false
      t.string :condition,           null: false
      t.string :vacancy,             null: false
      t.string :introduction,        null: false
      t.integer :common_service_fee, null: false
      t.string :room_facility,       null: false
      t.string :living,              null: false
      t.string :kitchen,             null: false
      t.string :bath,                null: false
      t.string :toilet,              null: false
      t.string :others,              null: false

      t.timestamps
    end
  end
end
