FactoryBot.define do
  factory :comment do
<<<<<<< Updated upstream
    
=======
    text {Faker::Lorem.sentence}
    association :user
    association :basket_area
>>>>>>> Stashed changes
  end
end
