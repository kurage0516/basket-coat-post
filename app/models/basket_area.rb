class BasketArea < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :coat_name
    validates :street_address
    validates :time
    validates :price
  end
end
