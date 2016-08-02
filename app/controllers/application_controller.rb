class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :recent_blogs

  def admin?
    if current_user
      raise 'You are not authorized to view this page' unless current_user.admin?
    else
      redirect_to auth_at_provider_path('github')
    end
  end

  def recent_blogs
    @recent_blogs = Blog.where(published: true).order(published_at: :desc).limit(6)
  end
end
