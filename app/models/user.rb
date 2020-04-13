require 'bcrypt'
class User < ApplicationRecord
    include BCryptclea
    has_many :listings
    has_many :reservations
    has_many :messages, through: :listings
    belongs_to :review

    has_secure_password
    validates :email, presence: true, uniqueness: true
end
