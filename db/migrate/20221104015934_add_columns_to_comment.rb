class AddColumnsToComment < ActiveRecord::Migration[6.1]
  def change
     add_column :comments, :relation, :integer
  end
end
