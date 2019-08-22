require 'faker'

FactoryBot.define do
  factory :client do
    name { Faker::Name.name }
    phone { Faker::PhoneNumber.cell_phone }
  end
end