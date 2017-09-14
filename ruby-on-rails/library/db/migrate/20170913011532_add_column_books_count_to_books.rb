class AddColumnBooksCountToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :books_count, :integer
  end
end
