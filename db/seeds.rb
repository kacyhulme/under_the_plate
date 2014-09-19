# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Establishment.create!([
  {
    name: 'Zocalo',
    owner: "Mark Windsor"
    },
  {
    name: 'Bouldin Creek Cafe',
    owner: "Chris Matthews"
    },
  {
    name: 'Galaxy',
    owner: "Selena Montgomery"
    },
  {
    name: 'Sushi Zushi',
    owner: "Xavier Banham"
    },
  {
    name: 'Odd Duck',
    owner: "Tom Jones"
    },
  {
    name: 'Home Slice Pizza',
    owner: "Homie Slice Man"
    }
])

Distributor.create!([
  {
    food_group_id: 1,
    name: "Food Manufacturers"
    },
 {
    food_group_id: 2,
    name: "US Foods"
    },
 {
    food_group_id: 3,
    name: "Good Food Delivery Distribution Services"
    },
 {
    food_group_id: 4,
    name: "Legumes Organic"
    },
 {
    food_group_id: 5,
    name: "Organic Food Merchants"
    },
 {
    food_group_id: 6,
    name: "Maggie's Farm"
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
    cuisine_id: 6
    },
  {
    establishment_id: 2,
    cuisine_id: 3
    },
  {
    establishment_id: 3,
    cuisine_id: 4
    },
  {
    establishment_id: 4,
    cuisine_id: 7
    },
  {
    establishment_id: 5,
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
  }
])
QualificationStatus.create! ([
  {
    establishment_id: 1,
    qualification_id: 7
  },
  {
    establishment_id: 2,
    qualification_id: 6
  },
    {
    establishment_id: 3,
    qualification_id: 5
  },
    {
    establishment_id: 4,
    qualification_id: 4
  },
    {
    establishment_id: 5,
    qualification_id: 3
  },
    {
    establishment_id: 6,
    qualification_id: 2
  },
    {
    establishment_id: 6,
    qualification_id: 1
  },
    {
    establishment_id: 5,
    qualification_id: 7
  },
    {
    establishment_id: 4,
    qualification_id: 6
  },
    {
    establishment_id: 3,
    qualification_id: 5
  },
    {
    establishment_id: 2,
    qualification_id: 4
  }
])
e1 = Establishment.find(1)
e2 = Establishment.find(2)
e3 = Establishment.find(3)
e4 = Establishment.find(4)
e5 = Establishment.find(5)
e6 = Establishment.find(5)

a = e1.addresses.create!(street_number: "45", street_name: "Crawford", city: "Austin", state: "Texas", zip: "78704", phone: "5129990564", website: "www.makemefood.com")
a = e2.addresses.create!(street_number: "344", street_name: "Menlow Drive", city: "Austin", state: "Texas", zip: "78705", phone: "5125559000", website: "www.foodisfun.com")
a = e3.addresses.create!(street_number: "67888", street_name: "Nexus St", city: "Austin", state: "Texas", zip: "78702", phone: "5124508900", website: "www.website.com")
a = e4.addresses.create!(street_number: "10", street_name: "Montgomery St", city: "Austin", state: "Texas", zip: "78708", phone: "5123402222", website: "www.ilovetoeat.com")
a = e5.addresses.create!(street_number: "23", street_name: "Bellingham", city: "Austin", state: "Texas", zip: "78709", phone: "5122106500", website: "www.iamsohungry.com")
a = e6.addresses.create!(street_number: "2999", street_name: "Sinclair Rd", city: "Austin", state: "Texas", zip: "78729", phone: "5123909888", website: "www.wannaeatnow.com")


d1 = Distributor.find(1)
d2 = Distributor.find(2)
d3 = Distributor.find(3)
d4 = Distributor.find(4)
d5 = Distributor.find(5)
d6 = Distributor.find(6)

a = d1.addresses.create!(street_number: "5433", street_name: "Marilyn St", city: "Austin", state: "Texas", zip: "78724", phone: "5124330000", website: "www.distributors.com")
a= d2.addresses.create!(street_number: "888", street_name: "Campbell Ln", city: "Austin", state: "Texas", zip: "78735", phone: "5124562348", website: "www.gettinfoodoutthere.com")
a = d3.addresses.create!(street_number: "21", street_name: "Winslow Ave", city: "Austin", state: "Texas", zip: "78704", phone: "5126780033", website: "www.makinfood.com")
a = d4.addresses.create!(street_number: "4321", street_name: "Navigation Rd", city: "Austin", state: "Texas", zip: "78706", phone: "5123338888", website: "www.gitfoodtoyou.com")
a = d5.addresses.create!(street_number: "9000", street_name: "Whitestone", city: "Austin", state: "Texas", zip: "78710", phone: "5129996700", website: "www.wedeliverfood.com")
a = d6.addresses.create!(street_number: "8900", street_name: "Old Farm Rd", city: "Austin", state: "Texas", zip: "78730", phone: "512777300", website: "www.foodeliver.com")
