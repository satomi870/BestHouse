class AddColumnsToAnswer < ActiveRecord::Migration[6.1]
  def change
     add_column :answers, :relation, :integer
  end
end
