FactoryGirl.define do
  factory :order do
    total_price Faker::Number.number(4)
  end
end
