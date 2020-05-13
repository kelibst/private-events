class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, length: {in: 3..300}
    validates :username, presence: true, uniqueness: true, length: {in: 3..20}
end
