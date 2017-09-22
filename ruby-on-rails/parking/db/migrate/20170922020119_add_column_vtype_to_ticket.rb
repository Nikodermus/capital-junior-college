class AddColumnVtypeToTicket < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :vtype, foreign_key: true
  end
end
