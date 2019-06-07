
Message.destroy_all
Appointment.destroy_all
Activity.destroy_all
User.destroy_all

photo_urls = {
  "sports" => [
      "https://images.pexels.com/photos/1855269/pexels-photo-1855269.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=180&w=150",
      "https://images.pexels.com/photos/248547/pexels-photo-248547.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=170&w=250",
      "https://images.pexels.com/photos/1238729/pexels-photo-1238729.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=250&w=170"
  ],

  "food & drinks" => [
    "https://images.pexels.com/photos/1893609/pexels-photo-1893609.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
    "https://images.pexels.com/photos/1246957/pexels-photo-1246957.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=250&w=300",
    "https://images.pexels.com/photos/1537635/pexels-photo-1537635.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300"
  ],
  "nature" => [
    "https://images.pexels.com/photos/1020016/pexels-photo-1020016.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
    "https://images.pexels.com/photos/1122868/pexels-photo-1122868.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
    "https://images.pexels.com/photos/1376960/pexels-photo-1376960.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300"
  ],
  "art & culture" => ["https://images.pexels.com/photos/1313814/pexels-photo-1313814.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&w=300", "https://images.pexels.com/photos/2121661/pexels-photo-2121661.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300", "https://images.pexels.com/photos/1684187/pexels-photo-1684187.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=400&w=400"],

  "Music & Dance" => ["https://images.pexels.com/photos/2110175/pexels-photo-2110175.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&w=250", "https://images.pexels.com/photos/1398624/pexels-photo-1398624.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=400&w=400", "https://images.pexels.com/photos/270789/pexels-photo-270789.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300"],

  "Hobbies" => ["https://images.pexels.com/photos/378152/pexels-photo-378152.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&w=300", "https://images.pexels.com/photos/415176/pexels-photo-415176.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300", "https://images.pexels.com/photos/988622/pexels-photo-988622.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300"],

  "LGBTQ" => ["https://images.pexels.com/photos/2306817/pexels-photo-2306817.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300", "https://images.pexels.com/photos/919194/pexels-photo-919194.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300", "https://images.pexels.com/photos/1280638/pexels-photo-1280638.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300"],

  "Nightlife" => ["https://images.pexels.com/photos/625644/pexels-photo-625644.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=350", "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=350&w=350", "https://images.pexels.com/photos/426976/pexels-photo-426976.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300"],

  "Outdoors" => ["https://images.pexels.com/photos/1365425/pexels-photo-1365425.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=350", "https://images.pexels.com/photos/848612/pexels-photo-848612.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=300", "https://images.pexels.com/photos/390051/surfer-wave-sunset-the-indian-ocean-390051.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=400"],

  "Health & Wellness" => ["https://images.pexels.com/photos/588561/pexels-photo-588561.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300", "https://images.pexels.com/photos/866021/pexels-photo-866021.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300", "https://images.pexels.com/photos/248139/pexels-photo-248139.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300"]
}


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

categories.each do |category|
  photo_urls[category].each do |image|
      activity = Activity.new(
    title: Faker::Movies::HarryPotter.character,
    description: "Let's share that amazing experience, I'm the description btw.",
    date: Faker::Time.forward(2, :morning),
    meeting_point: ["Denpasar, Bali", "Singapore"].sample,
    number_of_people: age.sample,
    category: category,
    remote_photo_url: image,
    user: User.all.sample)
  activity.save
  end
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








