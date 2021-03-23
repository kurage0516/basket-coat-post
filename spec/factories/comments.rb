FactoryBot.define do
  factory :comment do
    text {Faker::Lorem.sentence}
    association :user
    association :basket_area
  end
end
