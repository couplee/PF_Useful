class HomesController < ApplicationController
  def top
    @products = Product.limit(3).order(created_at: :desc)
  end
  
  def about
  end
  
  # def update
  #   @user = User.find(params[:id])
  #   # if @user.update(user_params)
  #   #   flash[:success] = 'お客様情報が更新されました！'
  #   #   redirect_to users_path
  #   # else
  #   #   flash[:danger] = 'お客様の情報を更新出来ませんでした。内容をご確認ください。'
  #   #   render "edit"
  #   # end
  # end
  
  def like
    @users = User.where(is_valid: false)
    @likes = current_user.likes.where.not(user_id: @users).order(created_at: :desc).page(params[:page]).per(9)
  end
  
  def bookmark
    @bookmarks = current_user.bookmarks.all.order(created_at: :desc).page(params[:page]).per(9)
  end
  
  # def unsubscribe
  #   @user = User.find_by(name: params[:name])
  # end
  
  # def withdraw
  #   @user = User.find_by(name: params[:name])
  #   @user.update(is_valid: false)
  #   reset_session
  #   redirect_to root_path
  # end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :profile, :profile_image)
    end
  
end
