class Demerit < ApplicationRecord
  belongs_to :product                    #cocoonで'デメリット'機能実装2/6
  
  validates :disadvantage, presence: true
end