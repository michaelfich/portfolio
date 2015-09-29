class AdminController < ApplicationController
  layout "administrator"
  before_filter :is_admin?
  before_action :unread

  def index
    redirect_to admin_messages_url
  end

  def unread
    @unread = Message.where(read: false).count
  end
end
