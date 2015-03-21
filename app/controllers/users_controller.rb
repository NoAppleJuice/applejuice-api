class UsersController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    @user = User.find(params[:id])
    render json: {:user => @user}
  end

  def email
    @user = current_user
    @mail = UserMailer.welcome(current_user).deliver_now
    render json: {mail: @user}
  end

end
