class Hotel < ActiveRecord::Base
    has_many :rooms, inverse_of: :hotel, dependent: :destroy
    has_many :bookings, inverse_of: :hotel, dependent: :destroy
    attr_accessible :city, :geolocation, :name, :postcode, :street, :picture, :phone, :email
    mount_uploader :picture, PictureUploader
    
    def free_rooms
        rooms.joins(:bookings).where('bookings.room_id = rooms.id').count
    end
        
    
    def booked_days
        days = Hash.new
            event.event_range.each do |day|
                days[day] = Hash.new
                days[day]['Free'] = 0
                days[day]['Total'] = 0
            end
            
            event.event_range.each do |day|
                rooms.each do |room |
                    if room.booked_days.include?(day)
                        days[day]['Total'] = days[day]['Total'] + 1
                    else
                        days[day]['Free'] = days[day]['Free'] + 1
                        days[day]['Total'] = days[day]['Total'] + 1
                    end
                end
                
                
            end
    
        days
    end
    
    def event
        Event.first
    end
    
    
end
