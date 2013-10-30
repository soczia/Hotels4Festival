# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    dateFrom "2013-10-28"
    dateTo "2013-10-28"
    person_id 1
    room_id 1
    hotel_id 1
    group_id 1
  end
end
