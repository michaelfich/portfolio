class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.ip_address = request.remote_ip
    if @message.save
      redirect_to :root, notice: 'Your message has been sent.'
    else
      render :index, alert: 'Unable to send your message.'
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
