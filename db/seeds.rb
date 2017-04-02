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
