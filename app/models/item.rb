class Item < ApplicationRecord
    belongs_to :needed_item
    has_many :donations
end