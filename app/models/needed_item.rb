class NeededItem < ApplicationRecord
    belongs_to :shelter
    belongs_to :item


    # def update_quantity(shelter_id, item_id, quantity)
    #     item = NeededItem.where(:shelter_id => shelter_id, :item_id => item_id)
    #     updated_count = item.quantity -= quantity
    #     item.update(:qty => updated_count)
    # end

end