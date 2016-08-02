class AdminController < ApplicationController
  layout 'administrator'
  before_filter :admin?

  def index
  end
end
