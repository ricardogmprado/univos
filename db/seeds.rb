
Message.destroy_all
Appointment.destroy_all
Activity.destroy_all
User.destroy_all

photo_urls = {
  "sports" => [
       {
        image: "https://images.pexels.com/photos/1855269/pexels-photo-1855269.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=180&w=150",
        name: "Morning jog along the coast",
        description: "I'll be jogging the scenic route along the beach and stopping by at Jas cave after."
      },
       {
        image: "https://resources.grasshopperadventures.com/e708614ea847a7feddbc513fd75b8e3d6cb8caf5/hoi-an-countryside-bike-tour-masthead-1.jpg",
        name: "Countryside bike ride",
        description: "I discovered this route recently with stunning views of rice fields. We'll ride to the monkey forest of Sangeh",
      },
       {
        image: "https://images.pexels.com/photos/1238729/pexels-photo-1238729.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=250&w=170",
        name: "Rugby match for charity",
        description: "I am gathering a few people to form a small team for a friendly match this weekend. No experience necessary"
      },
  ],

  "food & drinks" => [
{
        image: "https://images.pexels.com/photos/1893609/pexels-photo-1893609.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "French food for dinner at my house",
        description: "I'll be making some of my favourite food and ."
      },
       {
        image: "https://images.pexels.com/photos/1246957/pexels-photo-1246957.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=250&w=300",
        name: "Pizza making fiesta",
        description: "We will shop for ingredients at Katu and we can prep and cook the meal together.
",
      },
       {
        image: "https://images.pexels.com/photos/1537635/pexels-photo-1537635.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "Pizza party @ Fabrika",
        description: "We should each get a pizza so we can sample the whole menu"
      },
  ],


  "art & culture" => [
      {
        image: "https://images.pexels.com/photos/1313814/pexels-photo-1313814.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&w=300",
        name: "Lantern shopping",
        description: "I'll be jogging the scenic route along the beach and stopping by at Jas cave after."
      },
       {
        image: "https://images.pexels.com/photos/2121661/pexels-photo-2121661.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "Art gallery hopping",
        description: "We'll stay around 20mins in each gallery and if we're lucky there'll be complementary wine/ finger food!",
      },
       {
        image: "https://images.pexels.com/photos/1684187/pexels-photo-1684187.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=400&w=400",
        name: "Colour Run on Echo Beach",
        description: "Who wants to join the colour run?"
      },
  ],


  "Music & Dance" => [
    {
        image: "https://www.broadway.org/galleries/666/items/thelionkingtour-01.jpg",
        name: "Lion King musical",
        description: "Looking for theatre enthusiasts to see this performance with and possibly meet for dinner before."
      },
       {
        image: "https://images.pexels.com/photos/1398624/pexels-photo-1398624.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=400&w=400",
        name: "Dance along the River ",
        description: "I have an hour session booked and my friends cancelled! Let's dance!",
      },
       {
        image: "https://images.pexels.com/photos/270789/pexels-photo-270789.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "All night Salsa Fiesta",
        description: "At my favourite spot with latin music, let's salsa the night away!"
      },
  ],

  "Hobbies" => [
    {
        image: "https://images.pexels.com/photos/378152/pexels-photo-378152.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&w=300",
        name: "Photography session at Turtle Bay",
        description: "Looking for other photography aficionados look for new spots to take awesome pics!"
      },
       {
        image: "https://images.pexels.com/photos/415176/pexels-photo-415176.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "Skateboard session",
        description: "I love skateboarding. Let's go on a trip to Ubud where they have the best roads and parks for skating!",
      },
       {
        image: "https://images.pexels.com/photos/848612/pexels-photo-848612.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=300",
        name: "Snowboarding trip",
        description: "I'll take you to my favourite spots to do tricks around the area and we can stop for hot chocolate after"
      },
  ],


  "Nightlife" => [
     {
        image: "https://images.pexels.com/photos/625644/pexels-photo-625644.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=350",
        name: "Electronic Dance Party",
        description: "Looking for people who enjoy electonic music to dance the night away!"
      },
       {
        image: "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=350&w=350",
        name: "Fireworks show @ B Club",
        description: "Looking for a cool bunch of people to celebrate the full moon party",
      },
       {
        image: "https://images.pexels.com/photos/426976/pexels-photo-426976.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "DJ Skism",
        description: "For all music lovers and fans of DJ Skism please join me in his final concert!"
      },
  ],

  "Outdoors" => [
     {
        image: "https://images.pexels.com/photos/1365425/pexels-photo-1365425.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=350",
        name: "Sunrise jungle and volcano trek",
        description: "We will hike through the forest and along the crater rim until you get to the sunrise point. There we can have breakfast and relax while watching the sunrise with views of Mt Batur, Mt Agung and Mt Rinjani in Lombok.",
      },
       {
        image: "https://images.pexels.com/photos/1020016/pexels-photo-1020016.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "Slide, cliffdive & swim in 5 waterfalls",
        description: "Looking for an adventurous bunch to hike to several waterfalls and cliffdive!",
      },
       {
        image: "https://images.pexels.com/photos/390051/surfer-wave-sunset-the-indian-ocean-390051.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=400",
        name: "Day trip to local surf spots",
        description: "There are a lot of a beautiful old fishing villages dotted along the coast and within driving distance. There are secluded beaches which are great for surfing. Expect some good waves",
      },
  ],

  "Social Impact" => [
    {
        image: "https://images.pexels.com/photos/2306817/pexels-photo-2306817.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
        name: "Pride parade",
        description: "Looking for supporters of the community to join for drinks and celebration!"
      },
       {
        image: "http://beaches.lacounty.gov/wp-content/uploads/2016/10/BeachCleaning.jpg",
        name: "Old Man's Beach clean up",
        description: "Let's clean up my favourite beach together and show some love to this amazing island!",
      },
       {
        image: "https://newsandviews.zurich.co.uk/wp-content/uploads/2016/06/Volunteers-soup-kitchen.jpg",
        name: "Soup kitchen volunteering",
        description: "Let's help the community before the holiday season!"
      },
  ],

  "Pets" => [
    {
        image: "http://www.loveakasha.com/wp-content/uploads/2018/10/IMG_7449-1140x760.jpg",
        name: "Haloween dog dress up party",
        description: "Let's discover the best spots to take photos "
      },
       {
        image:  "https://i.etsystatic.com/13690831/r/il/bc4e64/1744508583/il_570xN.1744508583_loxc.jpg",
        name: "My dog's birthday",
        description: "Inviting small friendly dogs to socialise at my Daschund's 3rd birthday party! ",
      },
       {
        image: "https://alldogsnc.com/wp-content/uploads/2018/08/puppysmalldogsocial.jpg",
        name: "Puppies pet social",
        description: "Starting to socialise my puppy and I want to get to know other dog owners to share tips in being a new puppy mom!",
      },
  ]

}


male_avatars = [
  {
 image: "https://meiro.io/wp-content/uploads/2019/05/profile-picture-Pavel-Bulowski-small-for-internet.jpg",
 name: "Noah Reed",
 about_me: " I was working as strategy consultant in Switzerland."

},

{
 image: "https://www.drupal.org/files/user-pictures/picture-2214664-1548465769.png",
 name: "Callum Brown",
 about_me: "I'm from Florida, where I've been working in Emergency Management for the past couple of years since coming back from teaching English in South Korea."
},

 {
  image: "https://www.face-agency.co.uk/images/uploads/models/large/1498810136-21.jpg",
 name: "Liam Dill",
 about_me: "I have a lot of time off, and in that free time I travel (often by bicycle) and try to skill up in programming."
},

{
 image: "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg",
 name: "Mason Alexander",
 about_me: "Worked in restaurant for 10 years but got tired of working same job, want to change career and work in different countries."
},

{
 image: "https://www.keatleyphoto.com/wp-content/uploads/2016/06/IMG_2589.jpg",
 name: "Ben Summers",
 about_me:"Worked as a financial analyst and decided to learn coding for more freedom at work. "
  }
]

female_avatars = [
  {
image:"https://bittaxer.com/wp-content/uploads/2018/03/danielle-profile-bittaxer.jpg",
name: "Jessica Matthews",
about_me: "I'm from Oklahoma City in the United States of America. Most recently worked as a waitress."
},

{
image:"https://i.dailymail.co.uk/i/pix/2016/05/23/22/348B850600000578-3605456-image-m-32_1464040491071.jpg",
name: "Bella Jennings",
about_me: "Hi! I'm from Minnesota, United States. I am currently in a graduate school program studying special education/speech-language pathology."
},

{
image:"https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
name: "Hailey Brown",
about_me: "Product manager from New York"
},

{
image: "https://www.portraitprofessional.com/img/page-images/homepage/v18/slider/layers-B.jpg",
name: "Kelly Fox",
about_me: "I finished school and started my gap year. I was working for a few months now and decided it is time to learn something new."
}

]


gender = ["male", "female"]
age = (25..39).to_a
status = ["confirmed", "rejected", "saved"]

categories = ['sports', 'food & drinks', 'art & culture', 'Music & Dance', 'Hobbies',  'Nightlife', 'Outdoors', "Pets"]


puts "seeding Male Users"
  male_avatars.each do |avatar|
    p avatar
    user = User.new(
      name: avatar[:name],
      email: Faker::Internet.email,
      password: "password",
      location: Faker::Address.street_address,
      gender: "Male",
      age:  age.sample,
      about_me: avatar[:about_me],
      remote_photo_url: avatar[:image]
      )
      user.save
end

puts "seeding Female Users"
  female_avatars.each do |avatar|
    user = User.new(
      name: avatar[:name],
      email: Faker::Internet.email,
      password: "password",
      location: Faker::Address.street_address,
      gender: "Female",
      age:  age.sample,
      about_me: avatar[:about_me],
      remote_photo_url: avatar[:image]
      )
      user.save
end

puts "seeding Activities"

categories.each do |category|
  photo_urls[category].each do |activity|
      activity = Activity.new(
    title: activity[:name],
    description: activity[:description],
    date: Faker::Time.forward(2, :morning),
    meeting_point: ["Denpasar, Bali", "Singapore"].sample,
    number_of_people: age.sample,
    category: category,
    remote_photo_url: activity[:image],
    user: User.all.sample)
  activity.save
  end
end

puts "seeding Appointments"
40.times do
  appointment = Appointment.new(
    user: User.all.sample,
    activity: Activity.all.sample,
    status: status.sample)
  appointment.save
end

puts "seeding Messages"
5.times do
  message = Message.new(
    user: User.all.sample,
    activity: Activity.all.sample,
    content: Faker::Movies::HarryPotter.quote)
  message.save
end





