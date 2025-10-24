class AddRoomIdToChats < ActiveRecord::Migration[7.2]
  def change
    add_reference :chats, :room, null: false, foreign_key: true
  end
end
