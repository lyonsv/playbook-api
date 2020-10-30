class AddVehicleDetailsToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :base_color, :string
    add_column :cars, :year, :integer
    add_column :cars, :transmission, :string
    add_column :cars, :fuel_type, :string
  end
end
