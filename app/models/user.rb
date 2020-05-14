class User < ApplicationRecord
    has_many :events,foreign_key: :creator_id
    validates :email, presence: true, uniqueness: true, length: {in: 3..300}
    validates :username, presence: true, uniqueness: true, length: {in: 3..20}
end
