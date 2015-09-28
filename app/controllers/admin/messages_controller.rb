class Admin::MessagesController < ApplicationController
  layout "administrator"
  before_filter :is_admin?

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end
end
