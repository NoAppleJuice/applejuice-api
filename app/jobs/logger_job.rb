class LoggerJob 
  include SuckerPunch::Job
  
  def perform(user)
    @mail = UserMailer.welcome(user).deliver_now
  end
end
