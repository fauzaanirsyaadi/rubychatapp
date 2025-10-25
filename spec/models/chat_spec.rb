require 'rails_helper'

RSpec.describe Chat, type: :model do
  describe 'associations' do
    it { should belong_to(:room) }
  end

  describe 'callbacks' do
    it 'triggers notify_pusher after create' do
      room = create(:room)
      chat = build(:chat, room: room)
      
      # Stub PUSHER_CLIENT untuk menghindari panggilan API sungguhan
      allow(PUSHER_CLIENT).to receive(:trigger)
      
      chat.save!
      
      # Verifikasi bahwa metode trigger dipanggil dengan argumen yang benar
      expect(PUSHER_CLIENT).to have_received(:trigger).with("chat-room-#{room.id}", 'new', chat.as_json)
    end
  end
end