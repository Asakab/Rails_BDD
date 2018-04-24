# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do 
	Course.create(title: Faker::Dessert.variety, content: Faker::Cat.breed)
end

20.times do 
	b = rand(1..20)
	courses = Course.find(b)

	Student.create(course_id: courses.id , name: Faker::Name.name)
end
