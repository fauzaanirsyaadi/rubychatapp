FactoryBot.define do
  factory :chat do
    username { "testuser" }
    message { "This is a test message." }
    association :room
  end
end