class UsersController < ApplicationController
  before_action :check_guest, only: [:update]                                       #ゲストユーザーは編集できない1/2
  before_action :authenticate_user!, except: [:index]

  def index
    @users = User.page(params[:page]).per(4)
  end

  def show
    @user = User.find(params[:id])
    @products = @user.products.all.order(created_at: :desc).page(params[:page]).per(2)
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path, alert: '不正なアクセスです'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: '更新に成功しました'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :profile_image)
  end

  def check_guest                                                                  #ゲストユーザーは編集できない2/2
    if current_user.email == 'guest@example.com'
      redirect_to users_path, alert: 'ゲストユーザーの編集はできません'
    end
  end
end
