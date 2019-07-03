
Message.destroy_all
Appointment.destroy_all
Activity.destroy_all
User.destroy_all

photo_urls = {
  "Sports & Fitness" => [
       {
        image: "https://media.nbcphiladelphia.com/images/987*656/20180506_BCBSR_Pic+%2835%29.jpg",
        title: "Marathon prep",
        description: "I love running marathons, i'm looking for marathon prep buddies so we can all motivate each other and get ready for the upcoming marathon in july"
      },
       {
        image: "https://upload.wikimedia.org/wikipedia/commons/c/c1/Tandem_bicycle_riders_in_Virginia.jpg",
        title: "Countryside bike ride",
        description: "I discovered this route recently with stunning views of rice fields. We'll ride to the monkey forest of Sangeh",
      }
  ],

  "Food & Drinks" => [
      {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(18..20), [00,15,30,45].sample, 0),
        image: "https://images.pexels.com/photos/1893609/pexels-photo-1893609.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        title: "French food for dinner at my house",
        description: "I'll be making some of my favourite food and ."
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(18..21), [00,15,30,45].sample, 0),
        image: "https://images.pexels.com/photos/1246957/pexels-photo-1246957.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=250&w=300",
        title: "Pizza making fiesta",
        description: "We will shop for ingredients at Katu and we can prep and cook the meal together.",
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(19..23), [00,15,30,45].sample, 0),
        image: "http://www.hanoiairporttransfer.net/wp-content/uploads/2014/07/hanoi-street-food-tour.jpg",
        title: "Local street food night",
        description: "I wanna explore the possibilities of local street food here tonight. It would be cool if anyone else wants to come with me!"
      },
      {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(19..23), [00,15,30,45].sample, 0),
        image: "http://maba.blog/wp-content/uploads/2017/10/10350932-770x578.jpg",
        title: "Brazilian Barbecue in Canggu",
        description: "Who else loves Brazilian barbecue? My friends and I are organizing one tomorrow! "
      },
  ],


  "Art & Culture" => [
      {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(8..15), [00,15,30,45].sample, 0),
        image: "https://a.travel-assets.com/findyours-php/viewfinder/images/res60/42000/42496-Uluwatu-Temple.jpg",
        title: "A day at Uluwatu Temple",
        description: "I wanna visit the beautiful Uluwatu temple tomorrow. It would be cool if anyone wants to join me!"
      },
       {
        image: "https://www.taylorstracks.com/wp-content/uploads/2018/06/Ubud-Palace-Ubud-Bali.jpg",
        title: "Visiting Ubud Palace",
        description: "I heard that Ubud Palace is one of the top cultural must-sees in Ubud. I'd love to visit this place with other amazing people! "
      },
  ],


  "Music & Dance" => [
       {
        image: "https://i.pinimg.com/originals/cf/c3/21/cfc3210ef468b40da4508e00707a6653.jpg",
        title: "Dance with me at the Beach",
        description: "I have an hour session booked and my friends cancelled! Let's dance!",
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(18..22), [00,15,30,45].sample, 0),

        image: "https://images.pexels.com/photos/270789/pexels-photo-270789.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=300",
        title: "All night Salsa Fiesta",
        description: "At my favourite spot with latin music, let's salsa the night away!"
      },
  ],

  "Hobbies" => [
    {
        image: "https://images.pexels.com/photos/378152/pexels-photo-378152.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&w=300",
        title: "Photography session",
        description: "Looking for other photography aficionados look for new spots to take awesome pics!"
      },
       {
        image: "https://www.kcet.org/sites/kl/files/atoms/article_atoms/www.kcet.org/socal/departures/fieldguides/venice/VFG_Recreation_SkateboardRollerblade.jpg",
        title: "Skateboard session",
        description: "I love skateboarding. Let's go on a trip to Ubud where they have the best roads and parks for skating!",
      }
  ],


  "Nightlife" => [
     {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(19..23), [00,15,30,45].sample, 0),
        image: "https://images.pexels.com/photos/625644/pexels-photo-625644.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=350",
        title: "Electronic Dance Party",
        description: "Looking for people who enjoy electonic music to dance the night away!"
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(19..21), [00,15,30,45].sample, 0),
        image: "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=350&w=350",
        title: "Fireworks show @ B Club",
        description: "Looking for a cool bunch of people to celebrate the full moon party",
      }
  ],

  "Outdoors & Adventure" => [
     {
        date: date = DateTime.new(2019, 06, [14,15].sample, 5, [00,15,30,45].sample, 0),
        image: "https://media-cdn.tripadvisor.com/media/photo-s/08/e8/35/dd/mount-batur-bali-trekking.jpg",
        title: "Mount Batur sunrise trek",
        description: "We will hike through the forest and along the crater rim until you get to the sunrise point. There we can have breakfast and relax while watching the sunrise with views of Mt Batur, Mt Agung and Mt Rinjani in Lombok.",
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, 8, [00,15,30,45].sample, 0),
        image: "https://media-cdn.tripadvisor.com/media/photo-s/0d/d1/98/49/floating.jpg",
        title: "Slide, cliffdive & swim in 5 waterfalls",
        description: "Looking for an adventurous bunch to hike to several waterfalls and cliffdive!",
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, 8, [00,15,30,45].sample, 0),
        image: "https://images.pexels.com/photos/390051/surfer-wave-sunset-the-indian-ocean-390051.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=2&h=300&w=400",
        title: "Day trip to local surf spots",
        description: "There are a lot of a beautiful old fishing villages dotted along the coast and within driving distance. There are secluded beaches which are great for surfing. Expect some good waves",
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, 9, [00,15,30,45].sample, 0),

        image: "https://vietnamonmotorbike.com/wp-content/uploads/bfi_thumb/DSC_0603-nn8ueicokmhqxoxqpe6j1vzf2ruu9rkatkmujaj4ps.jpg",
        title: "Epic motorbike trip to Java",
        description: "My friends and I are looking for other adventurous people to go on a motorbike trip to Java! It's gonna be so epic!!!",
      },
  ],

  "Social Impact" => [
       {
        image: "http://beaches.lacounty.gov/wp-content/uploads/2016/10/BeachCleaning.jpg",
        title: "Old Man's Beach clean up",
        description: "Let's clean up my favourite beach together and show some love to this amazing island!",
      },
       {
        image: "https://newsandviews.zurich.co.uk/wp-content/uploads/2016/06/Volunteers-soup-kitchen.jpg",
        title: "Soup kitchen volunteering",
        description: "Let's help the community before the holiday season!"
      },
       {
        image: "https://ksr-ugc.imgix.net/assets/011/318/265/ff5eaa67c2efbe39bd63c33ea49c5fa5_original.png?ixlib=rb-2.0.0&crop=faces&w=1552&h=873&fit=crop&v=1463680935&auto=format&frame=1&q=92&s=87bb6f2f5c8570b350a95ee6b67b3852",
        title: "Visit a local orphanage with me",
        description: "Kids at this orphanage are lovely, it's so important for them to have visitors. Do you want to join me?"
      }
  ],


  "Pets" => [
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(10..15), [00,15,30,45].sample, 0),
        image:  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-on-beach-1559292224.jpg?crop=0.668xw:1.00xh;0.212xw,0&resize=480:*",
        title: "A day at the beach with our dogs",
        description: "Inviting small friendly dogs to socialise at the beach today"
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(10..15), [00,15,30,45].sample, 0),
        image: "https://cache.desktopnexus.com/thumbseg/1510/1510444-bigthumbnail.jpg",
        title: "Puppies pet social",
        description: "Starting to socialise my puppy and I want to get to know other dog owners to share tips in being a new puppy mom!",
      },
  ]

}


male_avatars = [
  {
 image: "https://avatars0.githubusercontent.com/u/48845777?v=4",
 name: "Garrett Olson",
 about_me: " I like outdoor activities and Id love to meet people on the same vibe!"

},

{
 image: "https://avatars1.githubusercontent.com/u/48044627?v=4",
 name: "Darren Tonks",
 about_me: "I consider myself a very social person and I love surfing!"
},

 {
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/srsttkn2lpfjjbcdfwix.jpg",
 name: "Federico Aguiar",
 about_me: "Im new to this city, I wanna get to know all the activity possibilities around!"
},

{
 image: "https://avatars1.githubusercontent.com/u/49085345?v=4",
 name: "Joe Walker",
 about_me: "I love doing sports, it would be cool to do activities related to that with like-minded people"
},

 {
  image: "https://avatars2.githubusercontent.com/u/20383179?v=4",
 name: "Rayhan Abisha",
 about_me:"I love dogs, if you have a dog, let's be friends and go for a walk with our little friends"
  },
  {
 image: "https://avatars0.githubusercontent.com/u/39394891?v=4",
 name: "Christopher Foley",
 about_me: "I love cycling, that's why i founded CycleThru! Let's ride together!"
},
  {
 image: "https://avatars0.githubusercontent.com/u/45018589?v=4",
 name: "Daniele Deltodesco",
 about_me: "I love drinking and travelling!"
}
]

female_avatars = [
  {
image:"https://avatars2.githubusercontent.com/u/48586241?v=4",
name: "Alina Heimgartner",
about_me: "I'm a yoga instructor and i love having a balance and healthy life."
},

{
image:"https://avatars1.githubusercontent.com/u/48332107?v=4",
name: "Jana Hohlbrugger",
about_me: "Im here because im super bored.... What can i do?"
},

{
image:"https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/t3qy4tzaortmhgax2e39.jpg",
name: "Sarah Wolfson",
about_me: "Product manager from New York"
},

{
image: "https://avatars2.githubusercontent.com/u/44662609?v=4",
name: "Sari Harasti",
about_me: "I literally don't know what do here. Im open for suggestions!!"
},

{
image: "https://avatars0.githubusercontent.com/u/48353082?v=4",
name: "Selin Immel",
about_me: "I love art and culture activities!"
},

{
image: "https://avatars3.githubusercontent.com/u/42955211?v=4",
name: "Ulyana Melnyk",
about_me: "I love eating different types of food!"
}

]


gender = ["male", "female"]
age = (23..30).to_a
no_people = (3..10).to_a
status = ["confirmed", "rejected", "saved"]

categories = ["Sports & Fitness", "Food & Drinks", "Art & Culture", "Music & Dance", 'Hobbies',  'Nightlife', "Outdoors & Adventure" , "Pets", "Social Impact"]

time_morning = []

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
      p activity[:image]
      activity = Activity.new(
        title: activity[:title],
        description: activity[:description],
        date: activity[:date] || DateTime.new(2019, 10, [14,15,16].sample, rand(8..18), [00,30].sample, 0) ,
        meeting_point: ["Denpasar, Bali"].sample,
        number_of_people: no_people.sample,
        category: category,
        remote_photo_url: activity[:image],
        user: User.all.sample
      )
      # byebug unless activity.valid?
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



#  daytime = DateTime.new(2019, 06, [14,15,16].sample, rand(8..18), [00,30].sample, 0)
# date = DateTime.new(2019, 06, [14,15,16].sample, rand(19..23), [00,30].sample, 0)


