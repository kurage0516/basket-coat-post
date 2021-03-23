class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :basket_area
end
