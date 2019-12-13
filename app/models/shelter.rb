class Shelter < ApplicationRecord
    has_many :donations
    has_many :needed_items
    has_many :users, through: :donations
    has_many :items, through: :needed_items

        # def update_quantity(shelter_id, item_id, quantity)
            #     item = NeededItem.where(:shelter_id => shelter_id, :item_id => item_id)
            #     updated_count = item.quantity -= quantity
            #     item.update(:qty => updated_count)
            # end

end
