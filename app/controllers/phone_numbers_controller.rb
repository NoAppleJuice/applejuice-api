class PhoneNumbersController < ApplicationController
  before_action :authenticate_user_from_token!
  before_action :set_user

  def show
    render json: {user: @user}
  end

  def create
    @phonenumber = current_user.phone_numbers.build(phone_params)
    if @phonenumber.save
      render json: {phonenumber: @phonenumber}
    else
      render json: {phonenumber: @phonenumber.errors}
  end
end

def phone_params
params.require(:phonenumber).permit(:base, :msg)
end

def set_user
@user = User.find(params[:id])
end


end
