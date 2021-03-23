class UsersController < ApplicationController
  before_action :check_guest, only: [:update, :withdraw]                                       #ゲストユーザーは編集できない1/2(update)      #ユーザー論理削除/(withdraw)     
  before_action :authenticate_user!, except: [:index]

  def index
    @users = User.active.order(created_at: :desc).page(params[:page]).per(8)                                             #ユーザー論理削除8/(.all→.actice)
  end

  def show
    @user = User.find(params[:id])
    @products = @user.products.all.order(created_at: :desc).page(params[:page]).per(6)
  end

  def withdraw                                                                             #ユーザー論理削除2/
    @user = User.find(params[:id])
    @user.update(is_valid: false)
    reset_session
    flash[:notice] = '退会処理を実行しました。'
    redirect_to root_path
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
      redirect_to users_path, alert: 'ゲストユーザーは変更できません'
    end
  end
end
