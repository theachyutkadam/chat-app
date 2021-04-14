class LandingController < ApplicationController
  def index
    @message = Message.new
    @messages = current_user.messages.where(receiver: params[:user_id]).order('created_at DESC')
  end

  def users_list
    @users = User.all
  end
end
