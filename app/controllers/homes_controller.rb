class HomesController < ApplicationController
  def top
    @products = Product.limit(3).order(created_at: :desc)
  end
  
  def about
  end
  
  def like
    @likes = current_user.likes.all.order(created_at: :desc).page(params[:page]).per(9)
  end
  
  def bookmark
    @bookmarks = current_user.bookmarks.all.order(created_at: :desc).page(params[:page]).per(9)
  end
  
end
