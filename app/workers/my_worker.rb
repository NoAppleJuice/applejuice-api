# class MyWorker
#   include Sidekiq::Worker

#   def perform(count)
#     Sidekiq.redis do |conn|
#       conn.incrby('foo', count)
#     end
#   end
# end