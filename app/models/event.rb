class Event < ApplicationRecord
    belongs_to :creator,class_name: :User,foreign_key: :creator_id
    validates :description, presence: true, length: {minimum: 3}
end
