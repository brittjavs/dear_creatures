class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :shelter
    belongs_to :item

    validates :user_id, :quantity, :item_id, presence: true
end
