class Photo < ApplicationRecord
  belongs_to :product_params
  attachment :image
end
