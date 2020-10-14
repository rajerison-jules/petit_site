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
    name: Faker::Nation.capital_city,
    postal_code: Faker::Address.zip_code
  )
  city.save
end

puts 'cities created'

10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Book.genre,
    email: Faker::Internet.email,
    age: Faker::Number.decimal_part(digits: 2),
    city_id: rand(0..10)
  )
  user.save
end

puts 'users created'

10.times do
  potin = Potin.create!(
    titles: Faker::Book.title,
    postal_code: Faker::Quote.yoda,
    user_id: rand(1..10)
  )
  potin.save
end

puts 'potins created'

10.times do
  tag = Tag.create!(
    title: Faker::Book.genre,
    user_id: rand(1..10),
    potin_id: rand(1..10)
  )
  tag.save
end

puts 'tags created'

10.times do
  pm = Pm.create!(
    content: Faker::Quote.matz,
    user_id: rand(1..10)
  )
  pm.save
end

puts 'PMS created'

10.times do
  comment = Comment.create!(
    content: Faker::Quote.matz,
    user_id: rand(1..10),
    potin_id: rand(1..10)
  )
  comment.save
end

puts "comments created"

10.times do
  like = Like.create!(
    user_id: rand(1..10),
    potin_id: rand(1..10)
  )
  like.save
end

puts 'likes created'

10.times do

end