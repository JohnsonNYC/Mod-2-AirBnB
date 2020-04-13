class Reservation < ApplicationRecord
    belongs_to :user
    has_one :payment
end
