class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :shelter
    belongs_to :item

    validates :user_id, :item_id, presence: true
    scope :money, -> {where(item_id: 8)}
    scope :not_money, -> {where(item_id: [1,2,3,4,5,6,7] )}
end
