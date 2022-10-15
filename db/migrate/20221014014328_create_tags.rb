class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|

      t.string :basic,        null: false
      t.string :room,         null: false
      t.string :building,     null: false
      t.string :surrounding,  null: false

      t.timestamps
    end
  end
end
