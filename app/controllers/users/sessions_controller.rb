class Users::SessionsController < Devise::SessionsController
  before_action :reject_inactive_user, only: [:create]                                                            # 論理削除でユーザー退会8/17

  # ゲストユーザー実装2/4
  def new_guest
    user = User.guest
    sign_in user
    redirect_to products_path, notice: 'ゲストユーザーとしてログインしました'
  end

  # 論理削除でユーザー退会9/17
  def reject_inactive_user
    @user = User.find_by(email: params[:user][:email])
    if @user
      if @user.valid_password?(params[:user][:password]) && (@user.active_for_authentication? == true)
        flash[:error] = '退会済みです'
        redirect_to new_user_session_path
      end
    else
      flash[:error] = '必須項目を入力してください'
    end
  end
end
