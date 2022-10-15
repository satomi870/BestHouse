class CreateTagProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_properties do |t|

      t.integer :tag_id,       null: false
      t.integer :property_id,  null: false

      t.timestamps
    end
  end
end
