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

  def self.search(search)
    if search != ""
      BasketArea.where('street_address LIKE(?)', "%#{search}%")
    else
      BasketArea.all
    end
  end
end
