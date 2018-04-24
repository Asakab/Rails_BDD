# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do 
	Course.create(title: Faker::Name.name, body: Faker::Dessert.variety)
end

80.times do
	l = rand(1..20)
	c = Course.find(l)

	Lesson.create(course_id: c.id, title: Faker::Cat.registry, description: Faker::Cat.breed) 
end