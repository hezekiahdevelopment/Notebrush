require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email { generate :user_email }
    username 'HomieDClown'
    # first_name {Faker::Name.first_name}
    # last_name  {Faker::Name.last_name}
    gender %w(male female).sample
    password 'butteruppercuts2012'
    password_confirmation 'butteruppercuts2012'
  end

  sequence :user_email do |n|
    "user_#{n}@gmail.com"
  end
end
