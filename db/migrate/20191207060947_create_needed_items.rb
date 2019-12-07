class CreateNeededItems < ActiveRecord::Migration[6.0]
  def change
    create_table :needed_items do |t|
      t.integer :shelter_id
      t.integer :item_id
      t.integer :quantity
    end
  end
end
