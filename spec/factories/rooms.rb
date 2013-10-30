# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room do
    beds "MyString"
    roomtype "MyString"
    roomNumber "MyString"
    hotel_id ""
  end
end
