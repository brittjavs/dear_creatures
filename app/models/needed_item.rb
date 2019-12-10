class NeededItem < ApplicationRecord
    belongs_to :shelter
    belongs_to :item

    def update_quanity(shelter_id, item_id, quantity)
        item = NeededItem.where(shelter_id: parmas[:shelter_id], item_id: params[:item_id])
        item.quantity -= quantity
        item.update
    end
end