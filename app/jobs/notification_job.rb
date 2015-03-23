class NotificationJob 
  include SuckerPunch::Job
  
  def perform(user_id,notification_params)
    ActiveRecord::Base.connection_pool.with_connection do
        user = User.find(user_id)
        @notification = user.notifications.build(notification_params)
        if @notification.save
          @notification.go
        

      end
    end
  end
end