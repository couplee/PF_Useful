class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  
  validates :comment, presence: true                                                   #コメント空白禁止1/5
  
end
