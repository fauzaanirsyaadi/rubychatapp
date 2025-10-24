# config/initializers/pusher.rb
require 'pusher'

Pusher.logger = Rails.logger

PUSHER_CLIENT = Pusher::Client.new(
  app_id: '2068057',
  key:    '62cd985e9d8238ed4033',
  secret: 'b3a1fb82a38b3ee21a7a',
  cluster: 'ap1',
  use_tls: true
)