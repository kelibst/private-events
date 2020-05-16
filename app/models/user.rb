class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id
  has_many :invitations, foreign_key: :attendee_id
  has_many :attended_events, through: :invitations, source: :attended_event

  validates :email, presence: true, uniqueness: true, length: { in: 3..300 }
  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
end
