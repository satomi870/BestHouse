class AddColumnsToAnswerComment < ActiveRecord::Migration[6.1]
  def change
     add_column :answer_comments, :relation, :integer
  end
end
