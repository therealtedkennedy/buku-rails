class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configured_permitted_parameters, if: :devise_controller?

   def after_sign_in_path_for(resource)
    "/dashboard"
  end

  protected

  def configured_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name,:email,:password,:remember_me)}
  	devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email,:password,:remember_me)} 
  	devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name,:last_name,:current_artpromo,:email,:password,:remember_me)}
  end

end
