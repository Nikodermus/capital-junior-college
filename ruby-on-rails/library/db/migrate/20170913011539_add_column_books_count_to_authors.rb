class AddColumnBooksCountToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :books_count, :integer
  end
end
