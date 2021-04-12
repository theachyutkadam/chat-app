class LandingController < ApplicationController
  def index
    @message = Message.new
  end

  def users_list
    @users = User.all
  end
end
