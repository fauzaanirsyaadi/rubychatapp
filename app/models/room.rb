class Room < ApplicationRecord
  has_many :chats, dependent: :destroy
  
  validates :name, presence: true, uniqueness: true
end
