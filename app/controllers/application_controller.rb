class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?                                     #name登録2/4
  
  def after_sign_in_path_for(resource)                                                                    #ログイン後のリダイレクト先1/1
    products_path(resource)
  end
  
  def after_sign_out_path_for(resource)                                                                    #ログアウト後のリダイレクト先1/1
    root_path
  end

  protected

  def configure_permitted_parameters                                                                         #name登録3/4
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
