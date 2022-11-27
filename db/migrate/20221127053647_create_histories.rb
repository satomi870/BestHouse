class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|

      t.integer :property_id,           null: false
      t.integer :user_id,               null: false



      t.timestamps
    end
  end
end
