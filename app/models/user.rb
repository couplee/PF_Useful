class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :products, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  attachment :profile_image
  
  validates :name, presence: true, uniqueness: true

  def self.guest       #ゲストユーザー実装3/4
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = 'aaa'
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
