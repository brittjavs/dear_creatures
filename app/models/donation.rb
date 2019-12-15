class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :shelter
    belongs_to :item

    validates :user_id, :item_id, presence: true
    scope :money, -> {where(:item => 'Funding')}
end
