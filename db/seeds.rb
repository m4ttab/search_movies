Actor.destroy_all
Film.destroy_all
Director.destroy_all

50.times do 
	f = Film.create(title: Faker::Book.title, description: Faker::Lorem.paragraph(3))
	10.times do
		Actor.create(name: Faker::Name.name, description: Faker::Lorem.paragraph(3), date_of_birth: Faker::Date.between(10000.days.ago, Date.today), place_of_birth: Faker::Address.city, film: f  )
	end
	1.times do 
		Director.create(name: Faker::Name.name, description: Faker::Lorem.paragraph(3), date_of_birth: Faker::Date.between(10000.days.ago, Date.today), place_of_birth: Faker::Address.city, film: f)
	end
end

p "Done"