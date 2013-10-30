class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :dateFrom
      t.date :dateTo
      t.integer :person_id
      t.integer :room_id
      t.integer :hotel_id
      t.integer :group_id

      t.timestamps
    end
  end
end
