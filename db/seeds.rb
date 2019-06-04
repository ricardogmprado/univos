# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.destroy_all
Appointment.destroy_all
Activity.destroy_all
User.destroy_all

gender = ["male", "female"]
age = (25..45).to_a
status = ["confirmed", "rejected", "saved"]

puts "seeding Users"
25.times do
  user = User.new(
    name: Faker::FunnyName.name,
    email: Faker::Internet.email,
    password: "password",
    location: Faker::Address.city,
    gender: gender.sample,
    age:  age.sample)
  user.save
end

puts "seeding Activities"
10.times do
  activity = Activity.new(title: Faker::Movies::HarryPotter.character,
    description: "description",
    date: Faker::Time.forward(23, :morning),
    meeting_point: Faker::Address.city,
    number_of_people: age.sample,
    category: "none",
    user: User.last)
  activity.save
end

puts "seeding Appointments"
10.times do
  appointment = Appointment.new(user: User.last,
    activity: Activity.last,
    status: status.sample)
  appointment.save
end

puts "seeding Messages"
5.times do
  message = Message.new(
    user: User.last,
    activity: Activity.last,
    content: Faker::Movies::HarryPotter.quote)
  message.save
end








