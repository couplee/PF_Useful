class Users::SessionsController < Devise::SessionsController           #ゲストユーザー実装2/4
  def new_guest
    user = User.guest
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました'
  end
end