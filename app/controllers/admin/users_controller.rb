module Admin
  class UsersController < AdminController
    def index
      @users = User.all
    end

    def show
      @user = User.find_by(login: params['login'])
    end
  end
end
