class CreateAnswerComments < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_comments do |t|

      t.integer :user_id,    null: false
      t.integer :answer_id,  null: false
      t.string :body,     null: false

      t.timestamps
    end
  end
end
