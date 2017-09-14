class AddColumnKindOfToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :kind_of, :string
  end
end
