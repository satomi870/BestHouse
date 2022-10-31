class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|

      t.integer :property_id,           null: false
      t.integer :user_id,               null: false
      t.integer :relation,              null: false
      t.integer :atmosphere,            null: false
      t.integer :cleanliness_shared,    null: false
      t.integer :congestion_shared,     null: false
      t.integer :noise_shared,          null: false
      t.integer :noise_room,            null: false
      t.string :title,                  null: false
      t.string :text,                   null: false

      t.timestamps
    end
  end
end
