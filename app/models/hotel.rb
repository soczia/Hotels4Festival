class Hotel < ActiveRecord::Base
    has_many :rooms, inverse_of: :hotel, dependent: :destroy
    has_many :bookings, inverse_of: :hotel, dependent: :destroy
    attr_accessible :city, :geolocation, :name, :postcode, :street, :picture
    mount_uploader :picture, PictureUploader
    
    def free_rooms
        rooms.joins(:bookings).where('bookings.room_id = rooms.id').count
    end
    
    
end
