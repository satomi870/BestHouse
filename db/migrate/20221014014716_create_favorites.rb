class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|

      t.integer :user_id,        null: false
      t.integer :property_id,    null:false
      t.integer :property_name,  null: false

      t.timestamps
    end
  end
end
