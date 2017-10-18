class CreateStudentGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :student_grades do |t|
      t.references :student, foreign_key: true
      t.references :grade, foreign_key: true
      t.integer :value, default: 0

      t.timestamps
    end
  end
end
