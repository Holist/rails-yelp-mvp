# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating...'

restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "666",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "777",
    category:     "japanese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "888",
    category:     "italian"
  },
  {
    name:         "Mc Donald",
    address:      "Centre Ville",
    phone_number: "999",
    category:     "belgian"
  },
  {
    name:         "Piza Nico",
    address:      "Stuttenberg",
    phone_number: "111",
    category:     "italian"
  }
]

reviews_attributes = [
  {
    content:        "De la merde",
    rating:         0,
    restaurant_id:  1,
  },
  {
    content:        "Génial",
    rating:         4,
    restaurant_id:  2,
  },
  {
    content:        "Le concombre était délicieux",
    rating:         3,
    restaurant_id:  3,
  }
]

Restaurant.create!(restaurants_attributes)
Review.create!(reviews_attributes)
puts 'Finished!'
