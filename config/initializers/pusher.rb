# config/initializers/pusher.rb
require 'pusher'

Pusher.logger = Rails.logger

PUSHER_CLIENT = Pusher::Client.new(
  app_id: ENV.fetch('PUSHER_APP_ID'),
  key:    ENV.fetch('PUSHER_KEY'),
  secret: ENV.fetch('PUSHER_SECRET'),
  cluster: ENV.fetch('PUSHER_CLUSTER', 'ap1'),
  use_tls: true
)