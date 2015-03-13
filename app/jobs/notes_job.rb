class NotesJob < ActiveJob::Base
  queue_as :default

  def perform(*args)

    message = TWILIO_CLIENT.messages.create from: '2075187157', to: '4044092634', body: 'testing No apple sauce'  
    
  end

end
