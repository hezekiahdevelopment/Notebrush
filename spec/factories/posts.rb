require 'factory_girl'

FactoryGirl.define do
  factory :post do
    user
    content "MyText"
  end
end