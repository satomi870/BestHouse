class ChangeDataAgeToUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :age, :integer
  end
end
