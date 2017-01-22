require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email { generate :user_email }
    username 'HomieDClown'
    # first_name {Faker::Name.first_name}
    # last_name  {Faker::Name.last_name}
    # phone_number {'1234567890'.split('').shuffle.join}
    sex %w(male female).sample
    password 'butteruppercuts2012'
    password_confirmation 'butteruppercuts2012'
    confirmed_at Date.today
  end

  sequence :user_email do |n|
    "user_#{n}@gmail.com"
  end
end
