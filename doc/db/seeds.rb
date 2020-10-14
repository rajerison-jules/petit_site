# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# remplis la table doctors (via la class) avec 10 faux prenoms, noms et speciality et postal_code
10.times do
  doctor = Doctor.create!(
    firts_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    speciality: Faker::Superhero.power,
    postal_code: Faker::Address.zip_code
  )
  doctor.save
end

puts 'doctors created'

10.times do
  patient = Patient.create!(
    firts_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
  )
  patient.save
end

puts 'patients created'

10.times do
  appointment = Appointment.create!(
    date: '2020-01-24',
    doctor_id: rand(1..10),
    patient_id: rand(1..10)
  )
  appointment.save
end

puts 'appointments created'
