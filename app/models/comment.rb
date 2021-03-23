class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :basket_area

  validates :text ,presence: true
end
