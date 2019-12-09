class NeededItem < ApplicationRecord
    belongs_to :shelter
    belongs_to :item
end