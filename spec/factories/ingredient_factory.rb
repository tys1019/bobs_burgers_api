FactoryGirl.define do
  factory :ingredient do
    name Faker::Name.name
    category Faker::Name.name
    price 0
  end
end
