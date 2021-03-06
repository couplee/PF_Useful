class Photo < ApplicationRecord
  belongs_to :product
  attachment :image
end
