class NeededItem < ApplicationRecord
    belongs_to :shelter
    belongs_to :item


    def self.update_quantity(shelter_id, item_id, quantity)
        item = NeededItem.where(:shelter_id => shelter_id, :item_id => item_id).first
        # binding.pry
        updated_count = item.quantity -= quantity.to_i
        item.update(quantity: updated_count)
    end

    def self.update_funds(shelter_id, item_id, dollar_amount)
        item = NeededItem.where(:shelter_id => shelter_id, :item_id => item_id).first
        updated_funds = item.dollar_amount -= dollar_amount.to_f
        item.update(dollar_amount: updated_funds)
    end

end