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

d1 = Date.new(1967,1,24),
d2 = Date.new(2016,8,3),
d3 = Date.new(2017,8,1),
d4 = Date.new(1972,11,13),
d5 = Date.new(2016,8,9),
d6 = Date.new(2016,9,1),
d7 = Date.new(1985,9,11),
d8 = Date.new(2016,8,10),
d9 = Date.new(2017,1,1),
d101 = Date.new(2016,8,11),




User.create!([
  {
  username:"jules",
  email:"julian.wyatt@me.com",
  password:"password",
  password_confirmation: "password",
  first_name:"Julian",
  last_name:"Wyatt",
  admin_level:4,
  date_of_birth: Date.new(1967,1,24),
  image:File.open(Rails.root.join "db/seeds_images/julian.png"),
  accept_comms:true,
  accept_proms:true,
  mobile_tel_number: "07805574707",
  accept_texts:true,
 
  post_code:"SW4 6HX",
  house_flat_name_number:"6",
  street_address:"Sibella Rd",
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
  date_of_birth: Date.new(1972,11,13),
  image:File.open(Rails.root.join "db/seeds_images/eifion.png"),
  accept_comms:true,
  accept_proms:true,
  mobile_tel_number: "0765748292",
  accept_texts:true,
  
  post_code:"SW4 6HX",
  house_flat_name_number:"6",
  street_address:"Sibella Rd",
  locality:"Clapham",
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
  image:File.open(Rails.root.join "db/seeds_images/carlos.jpg"),
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
  image:File.open(Rails.root.join "db/seeds_images/carlos.jpg"),
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
  membership_type_id: 1,

  },


])

Activity.create!([
  { activity_name:"Personal Training",
    description: "A professionally guided tarining session where you really have to workout and not just look in the mirror",
    date:Date.new(2016,8,11),
    number_of_places: 5,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/carlos.jpg"),
    
    
  },
  { activity_name:"Personal Training",
    description: "A professionally guided tarining session where you really have to workout and not just look in the mirror",
    date:Date.new(2016,8,14),
    number_of_places: 5,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/carlos.jpg"),
    
    
  },
   { activity_name:"Personal Training",
    description: "A professionally guided tarining session where you really have to workout and not just look in the mirror",
    date:Date.new(2016,8,15),
    number_of_places:6,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/carlos.jpg"),
    
    
  },
   { activity_name:"Personal Training",
    description: "A professionally guided tarining session where you really have to workout and not just look in the mirror",
    date:Date.new(2016,8,17),
    number_of_places:5,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/carlos.jpg"),
    
    
  },
  { activity_name:"Personal Training",
    description: "A professionally guided tarining session where you really have to workout and not just look in the mirror",
    date:Date.new(2016,8,17),
    number_of_places:3,
    status:"Open For Booking",
    active:true,
    user_id:3,
    image:File.open(Rails.root.join "db/seeds_images/carlos.jpg"),
    
    
  }
  ])