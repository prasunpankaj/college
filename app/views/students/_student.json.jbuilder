json.extract! student, :id, :email, :first_name, :last_name, :mobile_no, :address, :dob, :created_at, :updated_at,:student_image
json.url student_url(student, format: :json)