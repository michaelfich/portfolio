class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_admin?
    if current_user
      raise "You are not authorized to view this page" unless current_user.admin?
    else
      redirect_to auth_at_provider_path("github")
    end
  end
end
