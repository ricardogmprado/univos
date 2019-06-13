
Message.destroy_all
Appointment.destroy_all
Activity.destroy_all
User.destroy_all

photo_urls = {
  "Sports & Fitness" => [
       {
        image: "https://media.nbcphiladelphia.com/images/987*656/20180506_BCBSR_Pic+%2835%29.jpg",
        name: "Morning jog along the coast",
        description: "I'll be jogging the scenic route along the beach and stopping by at Jas cave after."
      },
       {
        image: "https://upload.wikimedia.org/wikipedia/commons/c/c1/Tandem_bicycle_riders_in_Virginia.jpg",
        name: "Countryside bike ride",
        description: "I discovered this route recently with stunning views of rice fields. We'll ride to the monkey forest of Sangeh",
      },
       {
        image: "http://geoff-fordphoto.co.uk/wp-content/uploads/2017/05/Belper-7.jpg",
        name: "Rugby match for charity",
        description: "I am gathering a few people to form a small team for a friendly match this weekend. No experience necessary"
      },
  ],

  "Food & Drinks" => [
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
      {
        image: "http://maba.blog/wp-content/uploads/2017/10/10350932-770x578.jpg",
        name: "Brazilian Barbecue in Canggu",
        description: "Who else loves Brazilian barbecue? Join me! "
      },
  ],


  "Art & Culture" => [
      {
        image: "https://a.travel-assets.com/findyours-php/viewfinder/images/res60/42000/42496-Uluwatu-Temple.jpg",
        name: "A day at Uluwatu Temple",
        description: "I wanna visit the beautiful Uluwatu temple tomorrow. It would be cool if anyone wants to join me!"
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
        image: "https://i.pinimg.com/originals/cf/c3/21/cfc3210ef468b40da4508e00707a6653.jpg",
        name: "Dance with me at the Beach",
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
        name: "Photography session",
        description: "Looking for other photography aficionados look for new spots to take awesome pics!"
      },
       {
        image: "https://www.kcet.org/sites/kl/files/atoms/article_atoms/www.kcet.org/socal/departures/fieldguides/venice/VFG_Recreation_SkateboardRollerblade.jpg",
        name: "Skateboard session",
        description: "I love skateboarding. Let's go on a trip to Ubud where they have the best roads and parks for skating!",
      }
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
      {
        image: "https://d22ir9aoo7cbf6.cloudfront.net/wp-content/uploads/sites/4/2017/08/15774923_546476582215267_1481063576197727972_o.jpg",
        name: "Le wagon @ the Lawn",
        description: "Join batch #253 at the Lawn tonight. It's gonna be an awesome celebration!!"
      },
  ],

  "Outdoors & Adventure" => [
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
        image: "http://beaches.lacounty.gov/wp-content/uploads/2016/10/BeachCleaning.jpg",
        name: "Old Man's Beach clean up",
        description: "Let's clean up my favourite beach together and show some love to this amazing island!",
      },
       {
        image: "https://newsandviews.zurich.co.uk/wp-content/uploads/2016/06/Volunteers-soup-kitchen.jpg",
        name: "Soup kitchen volunteering",
        description: "Let's help the community before the holiday season!"
      },
       {
        image: "https://ksr-ugc.imgix.net/assets/011/318/265/ff5eaa67c2efbe39bd63c33ea49c5fa5_original.png?ixlib=rb-2.0.0&crop=faces&w=1552&h=873&fit=crop&v=1463680935&auto=format&frame=1&q=92&s=87bb6f2f5c8570b350a95ee6b67b3852",
        name: "Visit a local orphanage with me",
        description: "Kids at this orphanage are lovely, it's so important to them to have visitors. Do you want to join me?"
      }
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
        description: "Inviting small friendly dogs to socialise at the beach today",
      },
       {
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-KbkcwoFowFZzU7fVSK3DFMMi58XWg3peqmQ1tAV0_EG-pfv3",
        name: "Puppies pet social",
        description: "Starting to socialise my puppy and I want to get to know other dog owners to share tips in being a new puppy mom!",
      },
  ]

}


male_avatars = [
  {
 image: "https://meiro.io/wp-content/uploads/2019/05/profile-picture-Pavel-Bulowski-small-for-internet.jpg",
 name: "Noah Reed",
 about_me: " I like outdoor activities and Id love to meet people on the same vibe!"

},

{
 image: "https://www.drupal.org/files/user-pictures/picture-2214664-1548465769.png",
 name: "Callum Brown",
 about_me: "I consider myself a very social person, I wanna go out with cool people"
},

 {
  image: "https://www.face-agency.co.uk/images/uploads/models/large/1498810136-21.jpg",
 name: "Liam Dill",
 about_me: "Im new to this city, I wanna get to know all the activity possibilities around!"
},

{
 image: "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg",
 name: "Mason Alexander",
 about_me: "I love doing sports, it would be cool to do activities related to that with like-minded people"
},

{
 image: "https://www.keatleyphoto.com/wp-content/uploads/2016/06/IMG_2589.jpg",
 name: "Ben Summers",
 about_me:"I love dogs, if you have a dog, let's be friends and go for a walk with our little friends"
  }
]

female_avatars = [
  {
image:"https://bittaxer.com/wp-content/uploads/2018/03/danielle-profile-bittaxer.jpg",
name: "Jessica Matthews",
about_me: "I'm a yoga instructor and i love having a balance and healthy life."
},

{
image:"https://i.dailymail.co.uk/i/pix/2016/05/23/22/348B850600000578-3605456-image-m-32_1464040491071.jpg",
name: "Bella Jennings",
about_me: "Im here because im super bored.... What can i do?"
},

{
image:"https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
name: "Hailey Brown",
about_me: "Product manager from New York"
},

{
image: "https://www.portraitprofessional.com/img/page-images/homepage/v18/slider/layers-B.jpg",
name: "Kelly Fox",
about_me: "I literally don't know what do here. Im open for suggestions!!"
}

]


gender = ["male", "female"]
age = (25..39).to_a
no_people = (3..10).to_a
status = ["confirmed", "rejected", "saved"]

categories = ["Sports & Fitness", "Food & Drinks", "Art & Culture", "Music & Dance", 'Hobbies',  'Nightlife', "Outdoors & Adventure" , "Pets", "Social Impact"]


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
    meeting_point: ["Denpasar, Bali"].sample,
    number_of_people: no_people.sample,
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





