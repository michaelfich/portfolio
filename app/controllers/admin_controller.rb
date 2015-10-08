class AdminController < ApplicationController
  layout "administrator"
  before_filter :is_admin?

  def index
  end
end
