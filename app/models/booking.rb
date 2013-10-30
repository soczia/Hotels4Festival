class Booking < ActiveRecord::Base
    belongs_to :room, inverse_of: :bookings
    belongs_to :hotel, inverse_of: :bookings
    belongs_to :person, inverse_of: :bookings
    belongs_to :group, inverse_of: :bookings
  attr_accessible :dateFrom, :dateTo, :group_id, :hotel_id, :person_id, :room_id
end
