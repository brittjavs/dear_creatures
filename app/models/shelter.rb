class Shelter < ApplicationRecord
    has_many :donations
    has_many :needed_items
    has_many :users, through: :donations
    has_many :items, thourgh: :needed_items
end
