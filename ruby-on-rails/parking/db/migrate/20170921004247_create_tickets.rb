class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :plate
      t.string :vtype
      t.datetime :hour_in
      t.datetime :hour_out
      t.float :price

      t.timestamps
    end
  end
end
