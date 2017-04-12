	# This file should contain all the record creation needed to seed the database with its default values.
	# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
	#
	# Examples:
	#
	#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
	#   Character.create(name: 'Luke', movie: movies.first)

	TravelDestination.create!(address: 'Walt Disney World', city: 'Orlando', state: 'Florida')
	TravelDestination.create!(address: 'Las Vegas Strip', city: 'Las Vegas', state: 'Nevada')
	TravelDestination.create!(address: 'Grand Central Terminal', city: 'New York', state: 'New York')
	TravelDestination.create!(address: 'Magic Kingdom', city: 'Orlando', state: 'Florida')
	TravelDestination.create!(address: 'Disneyland Resort', city: 'Anaheim', state: 'California')
	TravelDestination.create!(address: 'Golden Gate Bridge', city: 'San Francisco', state: 'California')
	TravelDestination.create!(address: 'Faneuil Hall Marketplace', city: 'Boston', state: 'Massachusetts')
	TravelDestination.create!(address: 'Golden Gate Park', city: 'San Francisco', state: 'California')
	TravelDestination.create!(address: 'Pike Place Market', city: 'Seattle', state: 'Washington')
	TravelDestination.create!(address: 'South Street Seaport', city: 'New York', state: 'New York')


	dictionary = ["2017 Beale Street Music Festival", "Beale Street Music Festival", "Southern Hotwing Festival  Contest- 15th Anniversary!", "March for Science Memphis", "2017 World Championship Barbecue Cooking Contest", "Palestine Festival 2017", "The Midnight Club 6th Annual Luxury Boat Party", "Memphis Veg Fest", "Stroll with the Trolls", "Southern Junkers Spring Vintage Market", "Memphis Flyer's Bacon  Bourbon 2017", "Twilight Spring 17 Party!", "Goat Cuddles!", "Cafe du Memphis at the Park!", "ATB Car Club Festival Memphis, TN", "National Train Day Memphis", "Start Co. Lounge: TEQWeek Edition", "MommyCon Memphis - 2017", "6th Annual Harbor Town Crawfish Festival", "Taste the Rarity 2017", "Memphis in May World Championship BBQ Cooking Contest 2017", "Kaleidoscope Food Festival", "A Hot Night with Silk and Rome on stage live in Memphis, TN", "Live in Memphis, TN at FedEx Forum", "Marsha Ambrosius, Eric Benet  Will Downing", "The TaKeOver: The Block Party!", "Memphis Veg Fest", "Night at the Lorraine", "Sisterhood Showcase 2017", "Condomonium 2017", "Humane Society Pup Crawl", "The ChainSmokers Tour at Fed Ex Forum Fri.May 19th Memphis TN.", "PC Band Presents The R. Kelly Tribute", "Todrick Hall presents Straight Outta Oz", "2017 Memphis Brewfest", "Damien Escobar Live in Memphis", "Speakeasy Parlor", "Memphis Punk Fest 5", "Cody Jinks  Ward Davis (Memphis)", "Flavor Run Memphis - 2.5k  5k Premier Family Event"]

	# def get_random_word(dictionary)
	# 	dictionary[rand(dictionary.length)]
	# end

	0.upto(dictionary.length - 1) do |i|
		currentDateTime = DateTime.now
		currentYear = currentDateTime.year
		futureYear = currentYear.to_i + 2
		futureDateTime = DateTime.new(futureYear)
		# eventName = get_random_word(dictionary) + ' ' + i.to_s
		eventName = dictionary[i]

		if i % 2 == 0
			TravelEvent.create(name: eventName,
				description: 'This is the first event ever, guys.', 
				max_attendance: rand(1..100),
				price: rand(1..200),
				start: DateTime.now,
				travel_destination_id: 1,
				duration: Time.new(2002, 1, 31, 1))
		else
			TravelEvent.create(name: eventName,
				description: 'This is the first event ever, guys.', 
				max_attendance: rand(1..100),
				price: rand(1..200),
				start: futureDateTime,
				travel_destination_id: 1,
				duration: Time.new(2002, 1, 31, 1))

		end
	end


	admin_ahmmed = Admin.create!(email: 'ahmmed@memphis.edu', password: '123456', password_confirmation: '123456')
	admin_isaac = Admin.create!(email: 'isaac@memphis.edu', password: '123456', password_confirmation: '123456')
	admin_mislam = Admin.create!(email: 'mislam@memphis.edu', password: '123456', password_confirmation: '123456')
	admin_milu = Admin.create!(email: 'milu@memphis.edu', password: '123456', password_confirmation: '123456')

	admin_ahmmed.user = User.create(first_name: 'Kauser', last_name: 'Ahmed', address: 'memphis', phone: '9013154477', email: admin_ahmmed.email)
	admin_isaac.user = User.create(first_name: 'Isaac', last_name: 'Roland', address: 'memphis', phone: '9013158877', email: admin_isaac.email)
	admin_mislam.user = User.create(first_name: 'Maminur', last_name: 'Islam', address: 'memphis', phone: '9013154467', email: admin_mislam.email)
	admin_milu.user = User.create(first_name: 'Milu', last_name: 'Hasan', address: 'memphis', phone: '9013154477', email: admin_milu.email)

	# admin_ahmmed.user = ahmmed
	# admin_isaac.user = isaac
	# admin_mislam.user = mislam
	# admin_milu.user = milu

	admin_ahmmed.save
	admin_isaac.save
	admin_mislam.save
	admin_milu.save



