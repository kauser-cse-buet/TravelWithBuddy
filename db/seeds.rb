# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(20) do |i|
TravelEvent.create(name: 'First Ever Event',
				   description: 'This is the first event ever, guys.', 
				   max_attendance: '1',
				   price: 0,
				   start: DateTime.now,
				   duration: Time.new(2002, 1, 31, 1))
end


User.create!(first_name: 'Kauser', last_name: 'Ahmed', address: 'memphis', phone: '9013154477', email: 'ahmed@memphis.edu')
User.create!(first_name: 'Isaac', last_name: 'Roland', address: 'memphis', phone: '9013158877', email: 'isaac@memphis.edu')
User.create!(first_name: 'Maminur', last_name: 'Islam', address: 'memphis', phone: '9013154467', email: 'mislam@memphis.edu')
User.create!(first_name: 'Nazmul', last_name: 'Hasan', address: 'memphis', phone: '9013154477', email: 'ahmed@memphis.edu')

