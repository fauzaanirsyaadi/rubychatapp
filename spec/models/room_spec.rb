require 'rails_helper'

RSpec.describe Room, type: :model do
  describe 'associations' do
    it { should have_many(:chats).dependent(:destroy) }
  end

  describe 'validations' do
    subject { build(:room) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end