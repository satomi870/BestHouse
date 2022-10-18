class CreateRoomFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :room_facilities do |t|

      t.string :content,  null: false

      t.timestamps
    end
  end
end
