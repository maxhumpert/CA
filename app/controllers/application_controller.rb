class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_admin_user!
    redirect_to new_user_session_path unless current_user &&
        current_user.has_role?(:admin)
  end
end
