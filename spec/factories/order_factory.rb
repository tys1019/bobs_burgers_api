FactoryGirl.define do
  factory :order do
    burgers Faker::Number.digit
    total_price Faker::Number.number(4)
  end
end
