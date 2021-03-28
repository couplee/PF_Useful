class LikesController < ApplicationController
  def create
    @product = Product.find(params[:product_id])                                                       #'いいね機能'非同期通信5/10(@付け足す)
    like = current_user.likes.new(product_id: @product.id)                                             #'いいね機能'非同期通信6/10(@付け足す)
    like.save
    # redirect_to product_path(product)                                                                #'いいね機能'非同期通信7/10(コメントアウトする)
  end
  
  def destroy
    @product = Product.find(params[:product_id])                                                       #'いいね機能'非同期通信8/10(@付け足す)
    like = current_user.likes.find_by(product_id: @product.id)                                         #'いいね機能'非同期通信9/10(@付け足す)
    like.destroy
    # redirect_to product_path(product)                                                                #'いいね機能'非同期通信10/10(コメントアウトする)
  end
end
