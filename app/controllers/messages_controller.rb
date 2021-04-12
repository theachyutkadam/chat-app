class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(msg_params)
    @message.user_id = current_user.id
    if @message.save
      puts "------------message sending start----111---"
      ActionCable.server.broadcast "room_channel", content: @message.content, user: @message.user.email
    end
  end

  private

  def msg_params
    params.require(:message).permit(:content, :receiver)
  end

end