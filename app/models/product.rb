class Product < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  accepts_attachments_for :photos, attachment: :image
  has_many :post_comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :merits
  accepts_nested_attributes_for :merits, allow_destroy: true
  
  with_options presence: true do     #空白投稿禁止1/2
    validates :title
    validates :body
  end
  
  def liked_by?(user)          #いいね済みかどうか
    likes.where(user_id: user.id).exists?
  end
end
