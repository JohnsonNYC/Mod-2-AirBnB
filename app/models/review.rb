class Review < ApplicationRecord
    has_many :users
    has_many :listings, through: :users
end
