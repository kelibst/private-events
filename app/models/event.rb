class Event < ApplicationRecord

    belongs_to :creator,class_name: :User,foreign_key: :creator_id

    has_many :invitations,foreign_key: :attended_event_id
    has_many :attendees, through: :invitations , source: :attendee

    validates :description, presence: true, length: {minimum: 3}
end
