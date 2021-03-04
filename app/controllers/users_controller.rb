class UsersController < ApplicationController
  before_action :check_guest, only: [:update]         #ゲストユーザーは編集できない1/2
  before_action :authenticate_user!, except: [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :profile_image)
  end

  def check_guest          #ゲストユーザーは編集できない2/2
    if current_user.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーの編集はできません'
    end
  end
end
