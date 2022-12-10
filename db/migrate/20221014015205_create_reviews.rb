class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|

      t.integer :property_id,           null: false
      t.integer :user_id,               null: false
      t.integer :relation,              null: false
      t.integer :score,                 null: false
      t.integer :atmosphere,            null: false
      t.integer :cleanliness_shared,    null: false
      t.integer :congestion_shared,     null: false
      t.integer :noise,                 null: false
      t.integer :distance_sense,        null: false
      t.integer :net_speed,             null: false
      t.integer :shower,                null: false
      t.integer :event,                 null: false
      t.string  :repeat,                null: false
      t.string  :title,                 null: false
      t.string  :text,                  null: false

      t.timestamps
    end
  end
end
