# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
fruity = Tag.create(name: "fruity", description: "TODO")
dark = Tag.create(name: "dark", description: "TODO")

# First beer - BUZZ
beer_info_one = JSON.parse(open('https://api.punkapi.com/v2/beers/1').read)
p beer_info_one
b1 = Beer.create!(name: beer_info_one["name"])
BeerTag.create(beer: b1, tag: fruity);
BeerTag.create(beer: b1, tag: dark);

# Second beer
beer_info_one = JSON.parse(open('https://api.punkapi.com/v2/beers/2').read)
p beer_info_one
b1 = Beer.create!(name: beer_info_one["name"])
BeerTag.create(beer: b1, tag: fruity);
BeerTag.create(beer: b1, tag: dark);
