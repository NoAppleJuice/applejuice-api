class NotificationsController < ApplicationController
 
  #skip_before_action :verify_authenticity_token
  before_action :authenticate_user_from_token!
  before_action :set_user


  



  def notify
    #@user.phone_numbers.each do |num|

    NotesJob.perform_now


  #end
 end

# def verify
#   @client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
#   message = @client.messages.create from: '', to: '', body: ''
# end

  rescue_from ActionView::MissingTemplate do
    render json: {message: 'sent'}
 
end
  private
def set_user
  @user = User.find(params[:id])
end

# def notification_params
#   params.require(:notification).permit(:message)
# end

end 