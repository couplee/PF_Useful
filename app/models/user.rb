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

  validates :name, presence: true, uniqueness: true, length: { maximum: 16 }

  # ゲストユーザー実装3/4
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = 'GUEST'
      user.profile = 'ゲストユーザーです'
      user.profile_image = File.open('./app/assets/images/profile/miagerukijineko171027.jpg')
      user.password = SecureRandom.urlsafe_base64
    end
  end

  # 論理削除でユーザー退会7/17
  def active_for_authentication?
    super && (is_valid == true)
  end

  scope :active, -> { where(is_valid: true) }                                                    # 論理削除でユーザー退会10/17
  scope :deleted, -> { where(is_valid: false) }                                                  # 論理削除でユーザー退会11/17
end
