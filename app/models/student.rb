class Student < ApplicationRecord

  has_attached_file :student_image, default_url: "/images/missing.png"
  validates_attachment_content_type :student_image,presence: true, content_type: /\Aimage\/.*\z/
  validates_attachment_presence :student_image
  validates_attachment_size :student_image, :less_than => 12.megabytes
  validates_presence_of :email, :first_name, :last_name, :dob, :mobile_no, :address

end
