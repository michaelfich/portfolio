class OauthsController < ApplicationController
  def oauth
    session[:return_to_url] = request.referer unless request.referer =~ /oauth/
    login_at(params[:provider])
  end

  # rubocop:disable Metrics/AbcSize
  def callback
    provider = auth_params[:provider]
    if @user = login_from(provider) # rubocop:disable Lint/AssignmentInCondition
      if @user.admin
        redirect_back_or_to admin_index_url
      else
        redirect_back_or_to root_path, success: "Logged in from #{provider.titleize}!"
      end
    else
      begin
        @user = create_from(provider)
        reset_session
        auto_login(@user)
        redirect_back_or_to root_path, success: "Registered from #{provider.titleize}!"
      rescue
        redirect_to root_path, alert: "Failed to login from #{provider.titleize}!"
      end
    end
  end

  def signout
    logout
    redirect_back_or_to root_path, notice: 'Logged out'
  end

  private

  def auth_params
    params.permit(:code, :provider)
  end
end
