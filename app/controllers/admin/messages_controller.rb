class Admin::MessagesController < AdminController
  layout "administrator"
  before_filter :is_admin?

  def index
    @messages = Message.order(created_at: :desc)
  end

  def show
    @message = Message.find(params[:id])
    @message.read = true
    @message.save
  end
end
