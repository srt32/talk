class Contact < ActiveRecord::Base
  validates :frequency, inclusion: { in: (1..365) }
  validates :frequency, numericality: true
  validates :frequency, numericality: { only_integer: true }
  validates :frequency, presence: true
  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
  validates :user_id, presence: true
end
