class CreateAnswerComments < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_comments do |t|

      t.integer :answer_id,  null: false
      t.string :comment,     null: false

      t.timestamps
    end
  end
end
