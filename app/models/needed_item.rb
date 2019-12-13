class NeededItem < ApplicationRecord
    belongs_to :shelter
    belongs_to :item


    def self.update_quantity(shelter_id, item_id, quantity)
        item = NeededItem.where(:shelter_id => shelter_id, :item_id => item_id).first
        # binding.pry
        updated_count = item.quantity -= quantity.to_i
        item.update(quantity: updated_count)
    end

end