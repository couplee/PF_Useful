class LikesController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    like = current_user.likes.new(product_id: @product.id)
    like.save
    # redirect_to product_path(product)            <!--非同期通信5/5-->
  end
  
  def destroy
    @product = Product.find(params[:product_id])
    like = current_user.likes.find_by(product_id: @product.id)
    like.destroy
    # redirect_to product_path(product)            <!--非同期通信5/5-->
  end
end
