class Listing < ApplicationRecord
    belongs_to :user
    belongs_to :message
    has_one :location
end
