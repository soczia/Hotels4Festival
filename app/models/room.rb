class Room < ActiveRecord::Base
    belongs_to :hotel, inverse_of: :rooms
    has_many :bookings
  attr_accessible :beds, :hotel_id, :roomNumber, :roomtype
  
  def number_type
      "#{roomNumber} - #{roomtype}"
  end
end
