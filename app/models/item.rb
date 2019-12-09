class Item < ApplicationRecord
    has_many :needed_items
    has_many :donations
    validates :name, presence: true
    validates :name, uniqueness: true
    has_many :shelters, through: :needed_items
end