class Admin::UsersController < AdminController
  before_filter :is_admin?

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(login: params['login'])
  end
end
