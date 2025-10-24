class Chat < ApplicationRecord
  belongs_to :room
  
  after_create :notify_pusher

  def notify_pusher
    PUSHER_CLIENT.trigger("chat-room-#{room_id}", 'new', self.as_json)
  end
end
