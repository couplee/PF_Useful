class Merit < ApplicationRecord
  belongs_to :product                    #cocoonで'メリット'機能実装2/6
  
  validates :advantage, presence: true
end
