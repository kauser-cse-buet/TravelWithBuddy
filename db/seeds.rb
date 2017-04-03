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


admin_ahmmed = Admin.create!(email: 'ahmmed@memphis.edu', password: '123456', password_confirmation: '123456')
admin_isaac = Admin.create!(email: 'isaac@memphis.edu', password: '123456', password_confirmation: '123456')
admin_mislam = Admin.create!(email: 'mislam@memphis.edu', password: '123456', password_confirmation: '123456')
admin_milu = Admin.create!(email: 'milu@memphis.edu', password: '123456', password_confirmation: '123456')

ahmmed = User.create!(first_name: 'Kauser', last_name: 'Ahmed', address: 'memphis', phone: '9013154477', email: admin_ahmmed.email)
isaac = User.create!(first_name: 'Isaac', last_name: 'Roland', address: 'memphis', phone: '9013158877', email: admin_isaac.email)
mislam = User.create!(first_name: 'Maminur', last_name: 'Islam', address: 'memphis', phone: '9013154467', email: admin_mislam.email)
milu = User.create!(first_name: 'Milu', last_name: 'Hasan', address: 'memphis', phone: '9013154477', email: admin_milu.email)

admin_ahmmed.user = ahmmed
admin_isaac.user = isaac
admin_mislam.user = mislam
admin_milu.user = milu

admin_ahmmed.save
admin_isaac.save
admin_mislam.save
admin_milu.save
