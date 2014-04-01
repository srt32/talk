# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    user_id 1
    name "MyString"
    frequency 1
  end
end
