class Person < ActiveRecord::Base
    belongs_to :group, inverse_of: :people
    has_many :bookings, inverse_of: :person
    has_many :stays, inverse_of: :person
  attr_accessible :ableToShareRoom, :age, :email, :group_id, :imie, :mobile, :nazwisko, :role
  
  def full_name
      "#{imie} #{nazwisko}"
  end
end
