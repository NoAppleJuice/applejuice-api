class UsersController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    @user = User.find(params[:id])
    render json: {:user => @user}
  end

  def email
    @user = User.all
    @user.each do |user|
    LoggerJob.new.async.perform(user)
    end
      render json: {user: @user}
  end

end
