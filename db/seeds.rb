
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
      },
       {
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf-1F8fcvt6fl2RNWR56HdwQLFmxgf-Cj8gf-fabKYamJCcg3q_w",
        title: "Rugby match for charity",
        description: "I am gathering a few people to form a small team for a friendly match this weekend. No experience necessary"
      },
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
        image: "http://new-hls.s3.amazonaws.com/hls/data/2839/website/content/photo/places-ubud-palace-compressor.jpg",
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
      },
       {
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpvTfQEmbWZx5Lodk_0OTL50ODdIiYd50gy1mrtIun-NizCXYE",
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(19..23), [00,15,30,45].sample, 0),
        title: "Carl Cox @ Ulu Cliffhouse",
        description: "For all music lovers and fans of DJ Carl Cox please join me at this Ulu Cliffhouse event!"
      },
        {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(19..21), [00,15,30,45].sample, 0),
        image: "https://media-cdn.tripadvisor.com/media/photo-s/08/ba/0d/2c/old-man-s.jpg",
        title: "Pub Crawl in Canggu",
        description: "Let me show you my favourite bars in Canggu. Join my friends and I tonight! Trust me, we are gonna have an amazing time together!"
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
        image: "https://www.airbnb.com/google_place_photo?photoreference=CmRaAAAAnENZN-NAjtorMnO8G031E1ScHbr1ey9CbzxkqneK6zdpagK76LCUf2Pw9VmH2N8dl0A-feZiLS18FJBS5dGqSN-IzEELEcotZjS121tM0pJeJmDVnYF23Ni6nmPTBTyNEhDqTMqtbdTaoH0dye9VygNEGhRid-qZvVcdkqOjvCTRpZfalKm3gA&maxwidth=640&maxheight=640&place_id=2540820",
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

        image: "https://motorbiketourexpert.com/wp-content/uploads/2013/01/IMG_3769-400x260.jpg",
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
    # {
    #     date: date = DateTime.new(2019, 06, [14,15].sample, rand(10..15), [00,15,30,45].sample, 0),
    #     image: "data:image/jpeg;base64,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",

    #     title: "Pet adoption day",
    #     description: "There are so many kind and lovely dogs that need a dad or mom. Adopting a dog is an act of love!"
    #   },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(10..15), [00,15,30,45].sample, 0),
        image:  "http://r.ddmcdn.com/s_f/o_1/APL/uploads/2014/10/5-safety-tips-for-taking-dog-to-the-beach0.jpg",
        title: "A day at the beach with our dogs",
        description: "Inviting small friendly dogs to socialise at the beach today"
      },
       {
        date: date = DateTime.new(2019, 06, [14,15].sample, rand(10..15), [00,15,30,45].sample, 0),
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-KbkcwoFowFZzU7fVSK3DFMMi58XWg3peqmQ1tAV0_EG-pfv3",
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
        date: activity[:date] || DateTime.new(2019, 06, [14,15,16].sample, rand(8..18), [00,30].sample, 0) ,
        meeting_point: ["Denpasar, Bali"].sample,
        number_of_people: no_people.sample,
        category: category,
        remote_photo_url: activity[:image],
        user: User.all.sample
      )
      # byebug unless activity.valid?
      activity.save!
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


