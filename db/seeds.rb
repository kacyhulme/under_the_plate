# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Address.create!([
	{
    addressable_type: "establishment",
    addressable_id: 1,
    street_number: "1110",
    street_name: "W Lynn St",
    city: "Austin",
    state: "Texas",
    zip: "78703",
    phone: "5124728226",
    website: "www.zocalocafe.com"
		},
  {
    addressable_type: "distributor",
    addressable_id: 2,
    street_number: "7000",
    street_name: "Industrial Ln",
    city: "Dallas",
    state: "Texas",
    zip: "75211",
    phone: "2145558733",
    website: "www.foodmanufacturers.com" 
  },
  {
    addressable_type: "owner",
    addressable_id: 3,
    street_number: "34",
    street_name: "Bridgepark Way",
    city: "Dallas",
    state: "Texas",
    zip: "75210",
    phone: "2145553442",
    website: "www.sambrowninc.com" 
  },
{
    addressable_type: "establishment",
    addressable_id: 4,
    street_number: "1900",
    street_name: "South 1st Street",
    city: "Austin",
    state: "Texas",
    zip: "78704",
    phone: "5124161601",
    website: "www.bouldincreek.com"
    },
  {
    addressable_type: "distributor",
    addressable_id: 5,
    street_number: "650",
    street_name: "Ocean Pass Drive",
    city: "Santa Barbara",
    state: "California",
    zip: "93101",
    phone: "8055558900",
    website: "www.organicfoodmerchants.com" 
  },
  {
    addressable_type: "owner",
    addressable_id: 6,
    street_number: "34",
    street_name: "Bridgepark Way",
    city: "Dallas",
    state: "Texas",
    zip: "75210",
    phone: "2145553442",
    website: "www.sambrowninc.com" 
  },
{
    addressable_type: "establishment",
    addressable_id: 7,
    street_number: "1201",
    street_name: "S Lamar Blvd",
    city: "Austin",
    state: "Texas",
    zip: "78704",
    phone: "5124336521",
    website: "www.oddduckaustin.com"
    },
  {
    addressable_type: "distributor",
    addressable_id: 8,
    street_number: "5600",
    street_name: "Orange Grove Ln",
    city: "Oxnard",
    state: "California",
    zip: "93030",
    phone: "2135552222",
    website: "www.maggiesfarm.com" 
  },
  {
    addressable_type: "owner",
    addressable_id: 9,
    street_number: "34",
    street_name: "Bridgepark Way",
    city: "Dallas",
    state: "Texas",
    zip: "75210",
    phone: "2145553442",
    website: "www.sambrowninc.com" 
  }  
])

Establishment.create!([
  {
    name: 'Zocalo',
    address_id: 1,
    owner_id: 1,
    distributor_id: 1,
    owner: "Mark Windsor"
    },
  {
    name: 'Bouldin Creek Cafe',
    address_id: 4,
    owner_id: 1,
    distributor_id: 1,
    owner: "Chris Matthews"
    },
  {
    name: 'Galaxy',
    address_id: 4,
    owner_id: 1,
    distributor_id: 1,
    owner: "Selena Montgomery"
    },
  {
    name: 'Sushi Zushi',
    address_id: 4,
    owner_id: 1,
    distributor_id: 1,
    owner: "Xavier Banham"
    },
  {
    name: 'Odd Duck',
    address_id: 7,
    owner_id: 1,
    distributor_id: 1,
    owner: "Tom Jones"
    }    
])

Distributor.create!([
  {
    address_id: 2,
    owner_id: 4,
    food_group_id: 1,
    name: "Food Manufacturers" 
    },
 {
    address_id: 5,
    owner_id: 5,
    food_group_id: 1,
    name: "US Foods" 
    },
 {   
    address_id: 5,
    owner_id: 5,
    food_group_id: 1,
    name: "Good Food Delivery Distribution Services" 
    },
 {   
    address_id: 5,
    owner_id: 5,
    food_group_id: 1,
    name: "Legumes Organic" 
    },
 {   
    address_id: 5,
    owner_id: 5,
    food_group_id: 1,
    name: "Organic Food Merchants" 
    },
 {
    address_id: 8,
    owner_id: 6,
    food_group_id: 1,
    name: "Maggie's Farm" 
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
    cuisine_id: 9
    },
  {
    establishment_id: 4,
    cuisine_id: 9
    },
  {
    establishment_id: 7,
    cuisine_id: 9
    }
])