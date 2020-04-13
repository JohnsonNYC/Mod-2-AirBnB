require 'bcrypt'
class User < ApplicationRecord
    has_many :listings
    has_many :reservations
    has_many :messages, through: :listings
    has_many :reviews, through: :listings 

    has_secure_password
    validates :email, presence: true, uniqueness: true
end
