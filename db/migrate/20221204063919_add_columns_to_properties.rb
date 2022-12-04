class AddColumnsToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :cleaning_support, :string
    add_column :properties, :breadth, :string
  end
end
