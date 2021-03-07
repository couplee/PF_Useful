class Demerit < ApplicationRecord
  belongs_to :product
  
  validates :disadvantage, presence: true
end
