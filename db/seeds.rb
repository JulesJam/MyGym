# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "activities"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end





User.create!([
  {
  username:"jules",
  email:"julian.wyatt@me.com",
  password:"password",
  password_confirmation: "password",
  first_name:"Julian",
  last_name:"Wyatt",
  admin_level:4,
  date_of_birth: Date.new(1967,11,11),
  image:File.open(Rails.root.join "db/seeds_images/julian.png"),
  accept_comms:true,
  accept_proms:true,
  mobile_tel_number: "07805574707",
  accept_texts:true,
 
  post_code:"SW5 4HX",
  house_flat_name_number:"3",
  street_address:"The Rd",
  locality:"Clapham",
  city:"London",
  last_visit_date: Date.new(2016,8,3),
  total_visits: 3,
  membership_expiry_date: Date.new(2017,8,1),
  membership_type_id: 1,
  profile:"Owner of the gym",
  },
  {
  username:"eifion",
  email:"eifion.morris@mail",
  password:"password",
  password_confirmation:"password",
  first_name:"Eifion",
  last_name:"Morris",
  admin_level:1,
  date_of_birth: Date.new(1970,12,13),
  image:File.open(Rails.root.join "db/seeds_images/eifion.png"),
  accept_comms:true,
  accept_proms:true,
  mobile_tel_number: "0765748292",
  accept_texts:true,
  
  post_code:"SW5 9PX",
  house_flat_name_number:"41",
  street_address:"Any Rd",
  locality:"Tiverton",
  city:"London",
  last_visit_date: Date.new(2016,8,9),
  total_visits: 11,
  membership_expiry_date: Date.new(2016,9,1),
  membership_type_id: 1,

  },

  {
  username:"carlos",
  email: "carlos@mail",
  password: "password",
  password_confirmation:"password",
  first_name:"Carlos",
  last_name:"The Trainer",
  admin_level:2,
  date_of_birth: Date.new(1985,9,11),
  image:File.open(Rails.root.join "db/seeds_images/carlos1.png"),
  accept_comms:true,
  accept_proms:true,
  mobile_tel_number:"0765758494",
  accept_texts: false,
  
  post_code:"SE3 1BD",
  house_flat_name_number:"Flat 12 The Appartment Block",
  street_address:"Camberwell Grove",
  locality:"Camberwell",
  city:"London",
  last_visit_date: Date.new(2016,8,10),
  total_visits: 11,
  membership_expiry_date: Date.new(2017,1,1),
  membership_type_id: 1,

  },
  {
  username:"Janey123",
  email: "jane@mail",
  password: "password",
  password_confirmation:"password",
  first_name:"Jane",
  last_name:"Doe",
  admin_level:2,
  date_of_birth: Date.new(1972,8,11),
  image:File.open(Rails.root.join "db/seeds_images/janey.jpg"),
  accept_comms:true,
  accept_proms:true,
  mobile_tel_number:"0766478494",
  accept_texts: true,
  
  post_code:"N1 1BD",
  house_flat_name_number:"Flat 3 The Flats",
  street_address:"Somewhere In North London",
  locality:"Walthamstow",
  city:"London",
  last_visit_date: Date.new(2016,8,10),
  total_visits: 11,
  membership_expiry_date: Date.new(2017,1,1),
  membership_type_id: 2,

  },
  {
  username:"Bob",
  email: "bob@mail",
  password: "password",
  password_confirmation:"password",
  first_name:"Big",
  last_name:"Bob",
  admin_level:2,
  date_of_birth: Date.new(1991,3,11),
  image:File.open(Rails.root.join "db/seeds_images/bob.jpg"),
  accept_comms:true,
  accept_proms:false,
  mobile_tel_number:"0734478494",
  accept_texts: true,
  
  post_code:"N4 2HD",
  house_flat_name_number:"Flat 22 The Flats",
  street_address:"Somewhere In North London",
  locality:"Walthamstow",
  city:"London",
  last_visit_date: Date.new(2016,8,10),
  total_visits: 11,
  membership_expiry_date: Date.new(2017,1,1),
  membership_type_id: 1,

  },
  {
  username:"MickyG",
  email: "mike@mail",
  password: "password",
  password_confirmation:"password",
  first_name:"Mike",
  last_name:"Hayden",
  admin_level:3,
  date_of_birth: Date.new(1981,6,10),
  image:File.open(Rails.root.join "db/seeds_images/mike.jpg"),
  accept_comms:false,
  accept_proms:false,
  mobile_tel_number:"07850578494",
  accept_texts: true,
  
  post_code:"N1 1GT",
  house_flat_name_number:"Java Cottage",
  street_address:"Somewhere Near Here",
  locality:"Central",
  city:"London",
  last_visit_date: Date.new(2016,8,11),
  total_visits: 11,
  membership_expiry_date: Date.new(2017,8,12),
  membership_type_id: 3,

  },
  {
  username:"Dave",
  email: "dave@mail",
  password: "password",
  password_confirmation:"password",
  first_name:"Dave",
  last_name:"Dodgy",
  admin_level:3,
  date_of_birth: Date.new(1966,6,10),
  image:File.open(Rails.root.join "db/seeds_images/dave.png"),
  accept_comms:false,
  accept_proms:false,
  mobile_tel_number:"078505745694",
  accept_texts: true,
  
  post_code:"SW2 1TP",
  house_flat_name_number:"Wisteria Cottage",
  street_address:"Somewhere In South London",
  locality:"South Town",
  city:"London",
  last_visit_date: Date.new(2016,3,11),
  total_visits: 11,
  membership_expiry_date: Date.new(2014,4,10),
  membership_type_id: 3,

  }


])

Activity.create!([
  { activity_name:"Personal Training",
    description: "A professionally guided training session where you really have to workout and not just look in the mirror",
    date:Date.new(2016,8,12),
    start_time: "15:40:00",
    duration:"01:30:00",
    number_of_places: 5,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/carlos1.png"),
    
    
  },
  { activity_name:"Jumping Up and Down",
    description: "Lots of people jumpping up and deon for no apparent reason",
    date:Date.new(2016,8,14),
    start_time: "08:00:00",
    duration:"00:50:00",
    number_of_places: 5,
    status:"Open For Booking",
    active:true,
    user_id:4,
    image:File.open(Rails.root.join "db/seeds_images/bob.jpg"),
    
    
  },
   { activity_name:"Synchronised Fly Swatting",
    description: "High speed fly swatting to loud and raucouse music",
    date:Date.new(2016,8,15),
    start_time: "14:00:00",
    duration:"00:50:00",
    number_of_places:6,
    status:"Cancelled",
    active:true,
    user_id:5,
    image:File.open(Rails.root.join "db/seeds_images/flyswatting.jpg"),
    
    
  },
   { activity_name:"Swimmining In Custard",
    description: "People in skimpt trunk swimming slowly through thick custard in a vein attempt to reduce the size of their thighs",
    date:Date.new(2016,8,17),
    start_time: "12:30:00",
    duration:"00:50:00",
    number_of_places:5,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/custard.jpg"),
    
    
  },
  { activity_name:"Speed typing For the Over 50's",
    description: "A rapid digital work out to get those fingers pumped",
    date:Date.new(2016,8,17),
    start_time: "11:00:00",
    duration:"00:50:00",
    number_of_places:3,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/typing.jpg"),
    
    
  }
  ])

Photo.create!([
  { title:"press ups",
    description: "Please its not me",
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/gymmage2.jpg"),
    
  },
  { title:"After working out",
    description: "Definitely wish this was me ",
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/gymmage4.jpg"),
    
  },
  { title:"Working Hard on biceps",
    description: "Wish this was me doing these",
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/gymmage5.jpg"),
    
  },
  { title:"Some serious trainign",
    description: "Woking hard in the gym today",
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/gymmage1.jpg"),
    
  },
  { title:"Cycling away those pounds",
    description: "Cycling hard bit going no where",
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/gymmage3.jpg"),
    
  },
  { title:"Squatting quitely in a corner",
    description: "Mmmm...",
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/gymmage6.jpg"),
    
  }
  ])