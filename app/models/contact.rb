class Contact < ActiveRecord::Base
  validates :frequency, inclusion: { in: (1..365) }
  validates :frequency, numericality: true
  validates :frequency, numericality: { only_integer: true }
  validates :frequency, presence: true
  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
  validates :user_id, presence: true

  has_many :conversations
  belongs_to :user

  def last_conversation_at
    last_conversation.created_at
  end

  private

  def last_conversation
    conversations.order("created_at DESC").limit(1).first || NoConversation.new
  end
end

class NoConversation
  def created_at
  end
end
