class Admin::UsersController < ApplicationController
  layout "administrator"

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(login: params['login'])
  end
end
