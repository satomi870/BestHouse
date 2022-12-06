class AddColumnsToReview < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :relation_detail, :integer
    



  end
end

