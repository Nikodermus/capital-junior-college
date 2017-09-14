class CreatePersonBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :person_books do |t|
      t.references :person, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
