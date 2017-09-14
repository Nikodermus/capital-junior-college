class AddColumnKindOfToAuthor < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :kind_of, :string
  end
end
