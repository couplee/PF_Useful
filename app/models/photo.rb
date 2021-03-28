class Photo < ApplicationRecord
  belongs_to :product                                                                #refileで(複数の)画像投稿2/7┓
  
  attachment :image                                                                  #refileで(複数の)画像投稿2/7┛
  
end
