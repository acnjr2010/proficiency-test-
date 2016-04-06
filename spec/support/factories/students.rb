# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student, :class => 'Students' do
    id 1
    name "MyString"
    register_number "MyString"
    status 1
  end
end
