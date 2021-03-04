class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_guest, only: %i[update]
  
  def check_guest
    byebug
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーの編集はできません'
    end
  end
end