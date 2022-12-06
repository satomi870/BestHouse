class ChangeDatatypeAgeOfUsers < ActiveRecord::Migration[6.1]
  def change
     change_column :users, :age, :string
  end
end
