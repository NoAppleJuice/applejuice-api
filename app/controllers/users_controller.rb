class UsersController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    @user = User.find(params[:id])
    render json: {:user => @user}
  end



def index
end

def email
@mail = UserMailer.welcome(current_user)
render json: {mail: @mail}
end


end
