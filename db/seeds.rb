
Message.destroy_all
Appointment.destroy_all
Activity.destroy_all
User.destroy_all

gender = ["male", "female"]
age = (25..45).to_a
status = ["confirmed", "rejected", "saved"]
categories = ['sports', 'food & drinks', 'nature', 'art & culture', 'Music & Dance', 'Hobbies', 'LGBTQ', 'Nightlife', 'Outdoors', 'Health & Wellness']

puts "seeding Users"
100.times do
  user = User.new(
    name: Faker::FunnyName.name,
    email: Faker::Internet.email,
    password: "password",
    location: Faker::Address.street_address,
    gender: gender.sample,
    age:  age.sample)
  user.save
end

puts "seeding Activities"
100.times do
  activity = Activity.new(title: Faker::Movies::HarryPotter.character,
    description: "description",
    date: Faker::Time.forward(2, :morning),
    meeting_point: ["Denpasar, Bali", "Singapore"].sample,
    number_of_people: age.sample,
    category: categories.sample,
    user: User.last)
  activity.save
end

puts "seeding Appointments"
100.times do
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








