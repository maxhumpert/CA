class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_admin_user!
    redirect_to new_user_session_path unless current_user &&
        current_user.has_role?(:admin)
  end

  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  protected

  def configure_devise_permitted_parameters
  registration_params = [:forename, :surname, :email, :password, :password_confirmation]

  if params[:action] == 'update'
    devise_parameter_sanitizer.for(:account_update) {
      |u| u.permit(registration_params << :current_password)
  }
  elsif params[:action] == 'create'
    devise_parameter_sanitizer.for(:sign_up) {
      |u| u.permit(registration_params)
    }
  end
  end
end