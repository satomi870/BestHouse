class CreateCommentComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_comments do |t|

      t.integer :user_id,     null: false
      t.integer :comment_id,  null: false
      t.string :body,         null: false
      t.integer :relation,     null: false


      t.timestamps
    end
  end
end
