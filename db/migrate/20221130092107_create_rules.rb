class CreateRules < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|

      t.integer :property_id,           null: false
      t.integer :user_id,               null: false
      t.string :body,                   null: false


      t.timestamps
    end
  end
end
