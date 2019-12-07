class NeededItem < ApplicationController
    belongs_to :shelter
    has_many :items
end