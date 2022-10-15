class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|

      t.integer :customer_id,  null: false
      t.integer :property_id,  null: false
      t.string :title,         null: false
      t.string :text,          null: false

      t.timestamps
    end
  end
end
