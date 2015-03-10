class UsersController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    binding.pry
    @user = User.find(params[:id])
    render json: {:user => @user}
     
  end

  def index
  end


end
