class AddDescriptionToShelters < ActiveRecord::Migration[6.0]
  def change
    add_column :shelters, :description, :string
  end
end
