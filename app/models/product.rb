class Product < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy                                                     #refileで(複数の)画像投稿1/7
  accepts_attachments_for :photos, attachment: :image                                       #refileで(複数の)画像投稿1/7
  has_many :post_comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :merits                                                                                      #cocoonで'メリット'機能実装1/6┓
  accepts_nested_attributes_for :merits, allow_destroy: true                                            #cocoonで'メリット'機能実装1/6┛
  has_many :demerits                                                                                           #cocoonで'デメリット'機能実装1/6┓
  accepts_nested_attributes_for :demerits, allow_destroy: true                                                 #cocoonで'デメリット'機能実装1/6┛
  acts_as_taggable                                                                                               #タグ機能1/6
  
  with_options presence: true do
    validates :title, length: { maximum: 30 }
    validates :body
  end
  
  def liked_by?(user)                                                                                        #いいね済みかどうか
    likes.where(user_id: user.id).exists?
  end
  
  def bookmarked_by?(user)                                                                                   #ブックマーク済みかどうか
    bookmarks.where(user_id: user.id).exists?
  end
  
end
