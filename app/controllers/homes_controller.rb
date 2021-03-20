class HomesController < ApplicationController
  def top
    @products = Product.limit(3).order(created_at: :desc)
  end
  
  def about
  end
  
  def like
    @likes = current_user.likes
  end
  
  def bookmark
    @bookmarks = current_user.bookmarks
  end
  
end
