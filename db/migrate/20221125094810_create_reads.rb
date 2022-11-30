class CreateReads < ActiveRecord::Migration[6.1]
  def change
    create_table :reads do |t|

      t.integer :user_id,            null: false
      t.integer :question_id,        null: false
      t.boolean :complete,           null: false


      t.timestamps
    end
  end
end