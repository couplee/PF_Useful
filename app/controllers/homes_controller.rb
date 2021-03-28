class HomesController < ApplicationController
  def top
    @products = Product.limit(3).order(created_at: :desc)
  end

  def about
  end

  def like
    @users = User.where(is_valid: false)                                                                                                               #論理削除でユーザー退会14/17┓
    @likes = current_user.likes.joins(:product).where.not(products: { user_id: @users }).order(created_at: :desc).page(params[:page]).per(9)           #論理削除でユーザー退会14/17┛(.all→.joins(:product).where.not(products: { user_id: @users }) )
  end

  def bookmark
    @users = User.where(is_valid: false)                                                                                                                       #論理削除でユーザー退会15/17┓
    @bookmarks = current_user.bookmarks.joins(:product).where.not(products: { user_id: @users }).order(created_at: :desc).page(params[:page]).per(9)           #論理削除でユーザー退会15/17┛(.all→.joins(:product).where.not(products: { user_id: @users }) )
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :profile, :profile_image)
    end
end
