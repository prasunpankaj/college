FactoryGirl.define do
  factory :student do
  	email {  Faker::Internet.email }
  	first_name { Faker::Name.name }
  	last_name { Faker::Name.name }
  	dob { Faker::Date.between_except(20.year.ago, 1.year.from_now, Date.today) }
  	address {Faker::Address.city + Faker::Address.street_name + Faker::Address.zip}
  	mobile_no { Faker::PhoneNumber.cell_phone }
  	student_image {Rack::Test::UploadedFile.new('spec/factories/missing.jpg', 'image/png')}
  end
end
