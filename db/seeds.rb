# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'


Choice.destroy_all
Pub.destroy_all
BeerTag.destroy_all
User.destroy_all
Beer.destroy_all

user = User.create!(email: "test1@test.com", password:"123123", username: "test")
p user

fruity = Tag.create!(name: "Fruity", description: "Fruit has been added to the brew to create interesting, floral flavours")
rich = Tag.create!(name: "rich", description: "Dark malty flavours")
sweet = Tag.create!(name: "Sweet", description: "sweet")
bitter = Tag.create!(name: "Bitter", description: "bitter")
fresh = Tag.create!(name: "Fresh", description: "fresh")
hoppy = Tag.create!(name: "Hoppy", description: "hoppy")

pale = Tag.create!(name: "Pale", description: "pale")
blonde = Tag.create!(name: "Blonde", description: "blonde")
dark = Tag.create!(name: "Dark", description: "dark")
gluten_free = Tag.create!(name: "Gluten Free", description: "gluten_free")
vegan = Tag.create!(name: "Vegan", description: "vegan")

non_alchoholic = Tag.create!(name: "Non-Alchohlic", description: "na")
weak = Tag.create!(name: "Weak", description: "weak")
medium = Tag.create!(name: "Medium", description: "medium")
strong = Tag.create!(name: "Strong", description: "strong")

lager = Tag.create!(name: "Lager", description: "larger")
ale = Tag.create!(name: "Ale", description: "ale")
stout = Tag.create!(name: "Stout", description: "stout")
wheat_beer = Tag.create!(name: "Wheat Beer", description: "Wheat")
p wheat_beer

beer_1 = Beer.create!(name: "Lucy's Lager", description: "I wanted a pale ale")
BeerTag.create!(beer: beer_1, tag: fruity);
BeerTag.create!(beer: beer_1, tag: pale);
BeerTag.create!(beer: beer_1, tag: lager);

beer_2 = Beer.create!(name: "Vanda's Vheat beer", description: "I wanted a stout")
BeerTag.create!(beer: beer_2, tag: wheat_beer);
BeerTag.create!(beer: beer_2, tag: pale);
BeerTag.create!(beer: beer_2, tag: fresh);

beer_3 = Beer.create!(name: "Rahul's Ruby Ale", description: "I wanted a guiness")
BeerTag.create!(beer: beer_3, tag: hoppy);
BeerTag.create!(beer: beer_3, tag: sweet);
BeerTag.create!(beer: beer_3, tag: strong);

beer_4 = Beer.create!(name: "Arthur's Amber Ale", description: "It's pronounced cidre not cider")
BeerTag.create!(beer: beer_4, tag: sweet);
BeerTag.create!(beer: beer_4, tag: medium);
BeerTag.create!(beer: beer_4, tag: dark);
BeerTag.create!(beer: beer_4, tag: ale);

beer_5 = Beer.create!(name: "Steve's Stout", description: "Woof")
BeerTag.create!(beer: beer_5, tag: stout);
BeerTag.create!(beer: beer_5, tag: strong);
BeerTag.create!(beer: beer_5, tag: gluten_free);
BeerTag.create!(beer: beer_5, tag: dark);
p beer_1


pub_1 = Pub.create!(name: "The silver octopus", description:"great punk night on thursdays", address:"64 Tentacle Street")
pub_2 = Pub.create!(name: "The not sure tavern", description:"don't ask us, we get nervous", address:"20 Apple Road")
pub_3 = Pub.create!(name: "The racoon saloon", description:"excellent taxidermy", address:"1 Pinecone Lane")
p pub_1

choice_1 = Choice.create!(user: user, pub: pub_1, beer: beer_1)
choice_1 = Choice.create!(user: user, pub: pub_2, beer: beer_4)
choice_1 = Choice.create!(user: user, pub: pub_3, beer: beer_2)



