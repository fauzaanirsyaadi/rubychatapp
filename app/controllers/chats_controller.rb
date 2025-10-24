class ChatsController < ApplicationController
  before_action :set_room

  def index
    @chats = @room.chats
    @chat = Chat.new
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = @room.chats.new(chat_params)

    respond_to do |format|
      if @chat.save
        format.html { redirect_to @room, notice: 'Message was successfully posted.' }
        format.json { render json: { success: true, message: 'Message sent' }, status: :ok }
      else
        format.html { redirect_to @room }
        format.json { render json: { error: @chat.errors.full_messages }, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_room
      @room = Room.find(params[:room_id])
    end

    def chat_params
      params.require(:chat).permit(:username, :message)
    end
end
