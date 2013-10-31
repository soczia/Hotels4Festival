class Room < ActiveRecord::Base
    belongs_to :hotel, inverse_of: :rooms
    has_many :bookings
    
  attr_accessible :beds, :hotel_id, :roomNumber, :roomtype
  
  def number_type
      "#{roomNumber} - #{roomtype}"
  end
  
  def booked_days
        days = Array.new
        bookings.where('room_id').each do| booking |
            (booking.dateFrom..booking.dateTo).each do| day | 
                days.push(day)
            end
        end
        days
  end
  
  def bookings_link
      
      links = Hash.new
      bookings.where('room_id').each do| booking |
          (booking.dateFrom..booking.dateTo).each do| day |
              links[day]= booking
          end
      end
      links
  end
  
  def booked_days_test
      
      bookings.where('room_id')
  end

  def event
      Event.first
  end

end
