class OauthsController < ApplicationController
  skip_before_filter :require_login

  def oauth
    session[:return_to_url] = request.referer unless request.referer =~ /oauth/
    login_at(params[:provider])
  end

  def callback
    provider = auth_params[:provider]
    if @user = login_from(provider)
      redirect_back_or_to root_path, success: "Logged in from #{provider.titleize}!"
    else
      begin
        @user = create_from(provider)
        binding.pry
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
    redirect_back_or_to root_path, notice: "Logged out"
  end

  private
  def auth_params
    params.permit(:code, :provider)
  end
end
