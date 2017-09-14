class CreatePersonSegments < ActiveRecord::Migration[5.1]
  def change
    create_table :person_segments do |t|
      t.references :person, foreign_key: true
      t.references :segment, foreign_key: true

      t.timestamps
    end
  end
end
