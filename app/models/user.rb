class User < ApplicationRecord
    has_many :listings
    has_many :reservations
    has_many :messages, through: :listings
    belongs_to :review
end
