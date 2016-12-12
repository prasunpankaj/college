class CreateStudentSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :student_subjects do |t|
      t.integer :student_id, :null => false
      t.integer :subject_id, :null => false
      t.string :comment

      t.timestamps
    end
    add_foreign_key :student_subjects, :students
    add_foreign_key :student_subjects, :subjects
  end
end
