class Notification < ActiveRecord::Base
  belongs_to :user

  def go
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    message = client.messages.create from: '4047248008', to: self.number , body: self.message
  end

end
