# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  city = City.create!(
    city_name: Faker::Nation.capital_city
  )
  city.save
end

puts 'cities created'

10.times do
  dogsitter = Dogsitter.create!(
    city_id: rand(1..10)
  )
  dogsitter.save
end

puts 'dogsitters reated'

10.times do
  dog = Dog.create!(
    city_id: rand(1..10)
  )
  dog.save
end

puts 'dogs created'

10.times do
  stroll = Stroll.create!(
    dogsitter_id: rand(1..10),
    dog_id: rand(1..10)
  )
  stroll.save
end

puts 'stroll created'