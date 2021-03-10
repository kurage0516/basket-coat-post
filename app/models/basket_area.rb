class BasketArea < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :coat_name
    validates :street_address
    validates :time
    validates :price, format: { with: /\A[0-9]+\z/ },
                      numericality: { greater_than_or_equal_to: 0 }
  end
end
