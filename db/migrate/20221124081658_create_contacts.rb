class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|

      t.integer :property_id,        null: false
      t.integer :user_id,            null: false
      t.string :name,                null: false
      t.string :name_kana,           null: false
      t.string :gender,              null: false
      t.string :age,                 null: false
      t.string :nationality,         null: false
      t.string :email,               null: false
      t.string :telephone_number
      t.string :address
      t.string :occupation
      t.string :schedule,            null: false
      t.string :hope,                null: false
      t.text :contact,               null: false

      t.timestamps
  end
end
end
