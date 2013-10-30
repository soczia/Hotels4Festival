class Group < ActiveRecord::Base
    has_many :people, inverse_of: :group
    has_many :bookings, inverse_of: :group
    has_many :stays, inverse_of: :group
  attr_accessible :menager, :name
end
