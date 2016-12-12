require 'rails_helper'

RSpec.describe Student, type: :model do

  student_data =  FactoryGirl.create(:student)
  subject { described_class.new(email: student_data.email, first_name: student_data.first_name, last_name: student_data.last_name, mobile_no: student_data.mobile_no, dob: student_data.dob, student_image: student_data.student_image, address: student_data.address) }

 # it { should belongs_to(:subjects) }
 # it { should have_many(:student_subjects) }

  pp "Describing Class..."
  pp described_class

  it { should have_attached_file(:student_image) }
  it { should validate_attachment_presence(:student_image) }
  it { should validate_attachment_content_type(:student_image).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
  it { should validate_attachment_size(:student_image).less_than(12.megabytes) }


  it "is valid for valid attributes" do
    expect(subject).to be_valid
  end
  
  it "is not valid for valid email" do
  	subject.email = nil
  	expect(subject).to_not be_valid
  end

  it "is not valid for valid first_name" do
  	subject.first_name = nil
  	expect(subject).to_not be_valid
  end

  it "is not valid for valid last_name" do
  	subject.last_name = nil
  	expect(subject).to_not be_valid
  end
  it "is not valid for valid mobile_no" do
  	subject.mobile_no = nil
  	expect(subject).to_not be_valid
  end
  it "is not valid for valid dob" do
  	subject.dob = nil
  	expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should have_one(:buyer) }
    it { should have_one(:seller) }
  end

end
