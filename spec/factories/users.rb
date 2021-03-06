FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    password "password"
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone }
    username { Faker::Hacker.noun }
    avatar_url { Faker::Avatar.image }
  end
end
