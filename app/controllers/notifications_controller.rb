class NotificationsController < ApplicationController
 
  #skip_before_action :verify_authenticity_token
  before_action :authenticate_user_from_token!
  def notify
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    message = client.messages.create from: '2075187157', to: 'nil', body: 'Learning to send SMS you are.'
    render plain: message.status
  end
 
end 