class Merit < ApplicationRecord
  belongs_to :product
  
  validates :advantage, presence: true
end
