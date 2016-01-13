class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :level
    devise_parameter_sanitizer.for(:sign_up) << :trainer
    devise_parameter_sanitizer.for(:sign_up) << :dietician
    devise_parameter_sanitizer.for(:sign_up) << :nutritionist
    devise_parameter_sanitizer.for(:sign_up) << :health_coach
    devise_parameter_sanitizer.for(:sign_up) << :career_coach
    devise_parameter_sanitizer.for(:sign_up) << :life_coach

    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :level
    devise_parameter_sanitizer.for(:account_update) << :trainer
    devise_parameter_sanitizer.for(:account_update) << :dietician
    devise_parameter_sanitizer.for(:account_update) << :nutritionist
    devise_parameter_sanitizer.for(:account_update) << :health_coach
    devise_parameter_sanitizer.for(:account_update) << :career_coach
    devise_parameter_sanitizer.for(:account_update) << :life_coach

  end



  def authenticate_user
    if user_signed_in?
      else
      redirect_to new_user_registration_path, alert: 'Please register or sign-in'
    end
  end
end
