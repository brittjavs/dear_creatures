class ChangeDollarAmountToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :needed_items, :dollar_amount, :decimal, :precision => 10, :scale => 2
    change_column :donations, :dollar_amount, :decimal, :precision => 10, :scale => 2
  end
end
