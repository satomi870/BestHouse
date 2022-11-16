class AddColumnsToReview < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :relation_detail, :integer
    add_column :reviews, :net_speed, :integer
    add_column :reviews, :shower, :integer
    add_column :reviews, :event, :integer


  end
end

