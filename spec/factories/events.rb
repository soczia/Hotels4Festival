# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    start_at "2013-10-31"
    end_at "2013-10-31"
    name "MyString"
  end
end
