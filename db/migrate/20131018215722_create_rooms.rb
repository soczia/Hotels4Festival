class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :beds
      t.string :roomtype
      t.string :roomNumber
      t.number :hotel_id

      t.timestamps
    end
  end
end
