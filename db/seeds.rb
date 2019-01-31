# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
JoinTableDoctorSpecialty.destroy_all


5.times do |i|
	City.create!(id: i + 1, name: Faker::Address.city)
end

6.times do |i|
	Specialty.create!(id: i + 1, name: Faker::Job.field)
end

10.times do |i|
	Doctor.create!(id: i + 1, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip, city: City.find(1 + rand(5)))
end

20.times do |i|
	JoinTableDoctorSpecialty.create!(id: i + 1, doctor: Doctor.find(1 + rand(10)), specialty: Specialty.find(1 + rand(6)))
end

25.times do |i|
	Patient.create!(id: i + 1, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.find(1 + rand(5)))
end

22.times do |i|
	Appointment.create!(id: i + 1, doctor: Doctor.find(1 + rand(10)), patient: Patient.find(1 + rand(25)), date: Faker::Date.forward(365), city: City.find(1 + rand(5)))
end
