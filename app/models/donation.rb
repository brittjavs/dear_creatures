class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :shelter
    belongs_to :item
end
