class AddColumnsToQuestion < ActiveRecord::Migration[6.1]
  def change
     add_column :questions, :relation, :integer
  end
end
