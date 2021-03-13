class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?                                     #name登録2/3

  protected

  def configure_permitted_parameters                                                                         #name登録2/3
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
