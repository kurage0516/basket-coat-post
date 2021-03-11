FactoryBot.define do
  factory :basket_area do
    coat_name       { '施設名' }
    street_address  { '東京都渋谷区神南2丁目1-1' }
    url             { 'https://www.jpnsport.go.jp/yoyogi/' }
    price           { '1時間5000円' }
    time            { '9:00~17:00' }
    association :user

    after(:build) do |basket_area|
      basket_area.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
