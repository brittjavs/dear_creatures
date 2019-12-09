class NeededItem < ApplicationRecord
    belongs_to :shelter
    has_many :items
end