class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :email, :null => false, :unique => true
      t.string :first_name
      t.string :last_name
      t.string :mobile_no, :null => false
      t.text :address
      t.datetime :dob, :null => false

      t.timestamps
    end
    add_attachment :students, :student_image
  end
end
