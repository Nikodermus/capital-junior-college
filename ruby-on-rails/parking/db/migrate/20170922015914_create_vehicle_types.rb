class CreateVehicleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_types do |t|
      t.string :name
      t.float :price
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
