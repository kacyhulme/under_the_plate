# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create!([
  {
    name: "Green Pants",
    description: "These are pants and they're green",
    price: 15.50
  },
  {
    name: "Blue Shoes",
    description: "Blue shoes go with other things that are blue",
    price: 25.00
  },
  {
    name: "Grey Sweatshirt",
    description: "We love grey sweathsirts",
    price: 20.00
  },
  {
    name: "Running shoes",
    description: "These shoes are really good for running",
    price: 135.50
  },
  {
    name: "Chair",
    description: "One chair for sale.",
    price: 15.95
  },
  {
    name:"Tables",
    description: "But we have many tables.",
    price: 105.75
  }
])

Establishment.create!([
  {
    name: 'Zocalo',
    owner: "Mark Windsor",
    description: "Sed ut perspiciatis unde omnis iste natus et quasi architecto beatae vitae dicta sunt explicabo", 
    stars: 8
    },
  {
    name: 'Bouldin Creek Cafe',
    owner: "Chris Matthews",
    description: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit", 
    stars: 9
    },
  {
    name: 'Galaxy',
    owner: "Selena Montgomery",
    description: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium", 
    stars: 5
    },
  {
    name: 'Sushi Zushi',
    owner: "Xavier Banham",
    description: "Et harum quidem rerum facilis est et expedita distinctio", 
    stars: 5
    },
  {
    name: 'Odd Duck',
    owner: "Tom Jones",
    description: "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo ", 
    stars: 2
    },
  {
    name: 'Home Slice Pizza',
    owner: "Homie Slice Man",
    description: "Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ", 
    stars: 1
    }
])

Comment.create!([
{
  stars: 3,
  text: "It's all right. I've eaten at better places.",
  user_id: 1,
  establishment_id: 6
  },
{
  stars: 4,
  text: "This is an ok place to eat.",
  user_id: 2,
  establishment_id: 5
  },
{
  stars: 6,
  text: "The food is pretty good.",
  user_id: 3,
  establishment_id: 4
  },
{
  stars: 7,
  text: "I can always find something healthy here.",
  user_id: 4,
  establishment_id: 3
  },
{
  stars: 3,
  text: "Not my favorite place.",
  user_id: 1,
  establishment_id: 2
  },
  {
  stars: 2,
  text: "Pretty much don't like it and will probably not come back.",
  user_id: 2,
  establishment_id: 1
  },
  {
  stars: 4,
  text: "Pretty good. I'd come back I guess.",
  user_id: 3,
  establishment_id: 6
  },
  {
  stars: 9,
  text: "My favorite place to eat on the planet.",
  user_id: 4,
  establishment_id: 5
  },
  {
  stars: 5,
  text: "I like the food here. It's good.",
  user_id: 1,
  establishment_id: 4
  },
  {
  stars: 7,
  text: "Such a great place to eat. I always bring friends here.",
  user_id: 2,
  establishment_id: 3
  },
  {
  stars: 3,
  text: "Not so great.",
  user_id: 3,
  establishment_id: 2
  },
  {
  stars: 5,
  text: "Decent place to dine.",
  user_id: 4,
  establishment_id: 1
  }
])

Distributor.create!([
  {
    food_group_id: 1,
    name: "Food Manufacturers",
    description: "Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ", 
    },
 {
    food_group_id: 2,
    name: "US Foods",
    description: "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo ", 
    },
 {
    food_group_id: 3,
    name: "Good Food Delivery",
    description: "Et harum quidem rerum facilis est et expedita distinctio", 
    },
 {
    food_group_id: 4,
    name: "Legumes Organic",
    description: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium", 
    },
 {
    food_group_id: 5,
    name: "Organic Food Merchants",
    description: "Sed ut perspiciatis unde omnis iste natus et quasi architecto beatae vitae dicta sunt explicabo", 
    },
 {
    food_group_id: 6,
    name: "Maggie's Farm",
    description: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit", 
    }
])

Distribution.create!([
 {
    establishment_id: 1,
    distributor_id: 5
    },
 {
    establishment_id: 2,
    distributor_id: 4
    },
     {
    establishment_id: 3,
    distributor_id: 3
    },
     {
    establishment_id: 4,
    distributor_id: 2
    },
     {
    establishment_id: 5,
    distributor_id: 1
    }
])

Cuisine.create!([
  {
    name: "Interior Mexican"
    },
  {
    name: "Pizza Joint"
    },
  {
    name: "Southern"
    },
  {
    name: "Breakfast"
    },
  {
    name: "Wine Bar"
    },
  {
    name: "Trailer"
    },
  {
    name: "Mediterranean"
    },
  {
    name: "Vegetarian"
    },
  {
    name: "American"
    },
  {
    name: "Coffee Shop"
    },
   {
    name: "Sushi"
   } 
])

User.create! ([
  {
    name: "Greta Hulme-Wendling",
    email: "greta@projectseven.com",
    password: "password",
    password_confirmation: "password",
    admin: false
    },
  {
    name: "Kacy Hulme",
    email: "kacyhulme@gmail.com",
    password: "password",
    password_confirmation: "password",
    admin: true
    },
  {
    name: "Detroit Hulme-Wendling",
    email: "detroit@projectseven.com",
    password: "password",
    password_confirmation: "password",
    admin: false
    },
  {
    name: "Luke Wendling",
    email: "luke@projectseven.com",
    password: "password",
    password_confirmation: "password",
    admin: false
    }
])

CuisineCategorization.create! ([
  {
    establishment_id: 1,
    cuisine_id: 1
    },
  {
    establishment_id: 2,
    cuisine_id: 8
    },
  {
    establishment_id: 3,
    cuisine_id: 9
    },
  {
    establishment_id: 4,
    cuisine_id: 11
    },
  {
    establishment_id: 5,
    cuisine_id: 9
    },
  {
    establishment_id: 6,
    cuisine_id: 2
    }
])

FoodGroup.create! ([
  {
    name: "Produce"
  },
  {
    name: "Dairy"
  },
    {
    name: "Meat"
  },
    {
    name: "Fish"
  },
    {
    name: "Cheese"
  },
    {
    name: "Grain"
  },
    {
    name: "Paper Products"
  }
])

FoodGroupCategorization.create! ([
  {
    distributor_id: 1,
    food_group_id: 6
  },
    {
    distributor_id: 2,
    food_group_id: 5
  },
    {
    distributor_id: 3,
    food_group_id: 4
  },
    {
    distributor_id: 4,
    food_group_id: 3
  },
    {
    distributor_id: 5,
    food_group_id: 2
  },
  {
    distributor_id: 1,
    food_group_id: 4
  },
    {
    distributor_id: 2,
    food_group_id: 3
  },
    {
    distributor_id: 3,
    food_group_id: 4
  },
    {
    distributor_id: 4,
    food_group_id: 2
  },
    {
    distributor_id: 5,
    food_group_id: 6
  },
  {
    distributor_id: 6,
    food_group_id: 5
  }
])

Qualification.create! ([
  {
    name: "Green"
  },
  {
    name: "Vegetarian-friendly"
  },
    {
    name: "Vegan-friendly"
  },
    {
    name: "Allergy-friendly"
  },
    {
    name: "Recycles"
  },
    {
    name: "Gluten-free"
  },
    {
    name: "Kosher"
  },
    {
    name: "Local"
  }
])
QualificationStatus.create! ([
  {
    establishment_id: 1,
    qualification_id: 2
  },
  {
    establishment_id: 2,
    qualification_id: 2
  },
    {
    establishment_id: 3,
    qualification_id: 6
  },
    {
    establishment_id: 4,
    qualification_id: 2
  },
    {
    establishment_id: 5,
    qualification_id: 8
  },
    {
    establishment_id: 6,
    qualification_id: 2
  },
    {
    establishment_id: 1,
    qualification_id: 8
  },
    {
    establishment_id: 2,
    qualification_id: 8
  },
    {
    establishment_id: 3,
    qualification_id: 6
  },
    {
    establishment_id: 4,
    qualification_id: 6
  },
    {
    establishment_id: 5,
    qualification_id: 1
  },
  {
    establishment_id: 6,
    qualification_id: 2
  }
])
e1 = Establishment.find(1)
e2 = Establishment.find(2)
e3 = Establishment.find(3)
e4 = Establishment.find(4)
e5 = Establishment.find(5)
e6 = Establishment.find(6)

a = e1.addresses.create!(street_number: "1110", street_name: "West Lynn St", city: "Austin", state: "Texas", zip: "78703", phone: "5124728226", website: "www.zocalocafe.com")
a = e2.addresses.create!(street_number: "1900", street_name: "South 1st St", city: "Austin", state: "Texas", zip: "78704", phone: "5124161601", website: "www.bouldincreek.com")
a = e3.addresses.create!(street_number: "1000", street_name: "West Lynn St", city: "Austin", state: "Texas", zip: "78703", phone: "5124783434", website: "www.galaxycafeaustin.com")
a = e4.addresses.create!(street_number: "1611", street_name: "West 5th St", city: "Austin", state: "Texas", zip: "78703", phone: "5124747000", website: "www.sushizushi.com")
a = e5.addresses.create!(street_number: "1201", street_name: "S Lamar Blvd", city: "Austin", state: "Texas", zip: "78704", phone: "5124336521", website: "www.oddduckaustin.com")
a = e6.addresses.create!(street_number: "1415", street_name: "S Congress Ave", city: "Austin", state: "Texas", zip: "78704", phone: "5124447437", website: "www.homeslicepizza.com")


d1 = Distributor.find(1)
d2 = Distributor.find(2)
d3 = Distributor.find(3)
d4 = Distributor.find(4)
d5 = Distributor.find(5)
d6 = Distributor.find(6)

a = d1.addresses.create!(street_number: "5433", street_name: "Marilyn St", city: "Austin", state: "Texas", zip: "78724", phone: "5124330000", website: "www.distributors.com")
a = d2.addresses.create!(street_number: "888", street_name: "Campbell Ln", city: "Austin", state: "Texas", zip: "78735", phone: "5124562348", website: "www.gettinfoodoutthere.com")
a = d3.addresses.create!(street_number: "21", street_name: "Winslow Ave", city: "Austin", state: "Texas", zip: "78704", phone: "5126780033", website: "www.makinfood.com")
a = d4.addresses.create!(street_number: "4321", street_name: "Navigation Rd", city: "Austin", state: "Texas", zip: "78706", phone: "5123338888", website: "www.gitfoodtoyou.com")
a = d5.addresses.create!(street_number: "9000", street_name: "Whitestone", city: "Austin", state: "Texas", zip: "78710", phone: "5129996700", website: "www.wedeliverfood.com")
a = d6.addresses.create!(street_number: "8900", street_name: "Old Farm Rd", city: "Austin", state: "Texas", zip: "78730", phone: "512777300", website: "www.foodeliver.com")
