class Item < ApplicationRecord
    belongs_to :needed_item
    has_many :donations
    validates :name, presence: true
    validates :name, uniqueness: true
end