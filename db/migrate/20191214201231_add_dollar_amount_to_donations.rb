class AddDollarAmountToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :dollar_amount, :float
  end
end
