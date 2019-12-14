class AddDollarAmountToNeededItems < ActiveRecord::Migration[6.0]
  def change
    add_column :needed_items, :dollar_amount, :float
  end
end
