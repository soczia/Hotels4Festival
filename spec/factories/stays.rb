# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stay do
    check_in "2013-10-30"
    check_out "2013-10-30"
    person_id 1
    group_id 1
  end
end
