class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|

      t.integer :sender_id,     null: false
      t.integer :receiver_id,     null: false
      t.integer :question_id
      t.integer :comment_id
      t.integer :original_comment_id
      t.string :action,         null: false
      t.boolean :checked,  　　　null: false


      t.timestamps
    end
  end
end
