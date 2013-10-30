# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    imie "MyString"
    nazwisko "MyString"
    role "MyString"
    group_id ""
    age "MyString"
    ableToShareRoom ""
    mobile "MyString"
    email "MyString"
  end
end
