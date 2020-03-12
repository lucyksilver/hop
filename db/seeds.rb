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
BeerTag.destroy_all
PubBeer.destroy_all
Tag.destroy_all
Pub.destroy_all
Like.destroy_all
User.destroy_all
Beer.destroy_all
user = User.create!(email: "test1@test.com", password:"123123", username: "test", address: "138 Kingsland Rd, London E2 8DY")
p user
fruity = Tag.create!(name: "Fruity", description: "Fruit has been added to the brew to create interesting, floral flavours")
rich = Tag.create!(name: "Rich", description: "Dark malty flavours")
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
pilsner = Tag.create!(name: "Pilsner", description: "pilsner")
ale = Tag.create!(name: "Ale", description: "ale")
stout = Tag.create!(name: "Stout", description: "stout")
wheat_beer = Tag.create!(name: "Wheat Beer", description: "Wheat")


file_b1 = URI.open('https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
beer_1 = Beer.new(name: "Lucy's Lager", description: "Light and fresh")
beer_1.photo.attach(io: file_b1, filename: 'nes.png', content_type: 'image/png')
beer_1.save!
BeerTag.create!(beer: beer_1, tag: fruity);
BeerTag.create!(beer: beer_1, tag: pale);
BeerTag.create!(beer: beer_1, tag: lager);
file_b2 = URI.open('https://images.unsplash.com/photo-1523567830207-96731740fa71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
beer_2 = Beer.new(name: "Vanda's Vheat beer", description: "Fresh wheat beer")
beer_2.photo.attach(io: file_b2, filename: 'nes.png', content_type: 'image/png')
beer_2.save!
BeerTag.create!(beer: beer_2, tag: wheat_beer);
BeerTag.create!(beer: beer_2, tag: pale);
BeerTag.create!(beer: beer_2, tag: fresh);
file_b3 = URI.open('https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80')
beer_3 = Beer.new(name: "Rahul's Ruby Ale", description: "Hoppy yet sweet")
beer_3.photo.attach(io: file_b3, filename: 'nes.png', content_type: 'image/png')
beer_3.save!
BeerTag.create!(beer: beer_3, tag: hoppy);
BeerTag.create!(beer: beer_3, tag: sweet);
BeerTag.create!(beer: beer_3, tag: strong);
file_b4 = URI.open('https://images.unsplash.com/photo-1504502350688-00f5d59bbdeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
beer_4 = Beer.new(name: "Arthur's Amber Ale", description: "Dark and sweet")
beer_4.photo.attach(io: file_b4, filename: 'nes.png', content_type: 'image/png')
beer_4.save!
BeerTag.create!(beer: beer_4, tag: sweet);
BeerTag.create!(beer: beer_4, tag: medium);
BeerTag.create!(beer: beer_4, tag: dark);
BeerTag.create!(beer: beer_4, tag: ale);
file_b5 = URI.open('https://images.unsplash.com/photo-1567579518027-7a113279f8ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80')
beer_5 = Beer.new(name: "Steve's Stout", description: "Strong stout")
beer_5.photo.attach(io: file_b5, filename: 'nes.png', content_type: 'image/png')
beer_5.save!
BeerTag.create!(beer: beer_5, tag: stout);
BeerTag.create!(beer: beer_5, tag: strong);
BeerTag.create!(beer: beer_5, tag: gluten_free);
BeerTag.create!(beer: beer_5, tag: dark);
p beer_1
file_b6 = URI.open('https://images.unsplash.com/photo-1566633806327-68e152aaf26d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
beer_6 = Beer.new(name: "Golden delicious", description: "Fresh and zesty")
beer_6.photo.attach(io: file_b6, filename: 'nes.png', content_type: 'image/png')
beer_6.save!
BeerTag.create!(beer: beer_6, tag: pale);
BeerTag.create!(beer: beer_6, tag: sweet);
BeerTag.create!(beer: beer_6, tag: lager);
file_b7 = URI.open('https://images.unsplash.com/photo-1518099074172-2e47ee6cfdc0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80')
beer_7 = Beer.new(name: "Blue Star", description: "Dark and Stormy")
beer_7.photo.attach(io: file_b7, filename: 'nes.png', content_type: 'image/png')
beer_7.save!
BeerTag.create!(beer: beer_7, tag: strong);
BeerTag.create!(beer: beer_7, tag: dark);
BeerTag.create!(beer: beer_7, tag: stout);
file_b8 = URI.open('https://images.unsplash.com/photo-1532377611310-4564e426e7c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
beer_8 = Beer.new(name: "Bottle Green", description: "Gluten free ale that is strong")
beer_8.photo.attach(io: file_b8, filename: 'nes.png', content_type: 'image/png')
beer_8.save!
BeerTag.create!(beer: beer_8, tag: strong);
BeerTag.create!(beer: beer_8, tag: gluten_free);
BeerTag.create!(beer: beer_8, tag: ale);
beer_8.save!
file_b9 = URI.open('https://images.unsplash.com/photo-1532634726-8b9fb99845fd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
beer_9 = Beer.new(name: "Duff", description: "Sweet ale")
beer_9.photo.attach(io: file_b9, filename: 'nes.png', content_type: 'image/png')
beer_9.save!
BeerTag.create!(beer: beer_9, tag: hoppy);
BeerTag.create!(beer: beer_9, tag: sweet);
BeerTag.create!(beer: beer_9, tag: ale);
file_b10 = URI.open('https://images.unsplash.com/photo-1532634726-8b9fb99845fd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
beer_10 = Beer.new(name: "Wagon Juice", description: "Strong Fresh ale")
beer_10.photo.attach(io: file_b10, filename: 'nes.png', content_type: 'image/png')
beer_10.save!
BeerTag.create!(beer: beer_10, tag: strong);
BeerTag.create!(beer: beer_10, tag: fresh);
BeerTag.create!(beer: beer_10, tag: ale);
file_1 = URI.open('https://images.unsplash.com/photo-1546726855-8a67ffa6be39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1784&q=80')
pub_1 = Pub.new(name: "The silver octopus", description:"great punk night on thursdays", address:"141 Albert St, London NW1 7NB")
pub_1.photo.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')
pub_1.save!
p pub_1
file_2 = URI.open('https://images.unsplash.com/photo-1523950300486-6be20a1b1f60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
pub_2 = Pub.new(name: "The not sure tavern", description:"don't ask us, we get nervous", address:"84 Commercial St, London E1 6LY")
pub_2.photo.attach(io: file_2, filename: 'nes.png', content_type: 'image/png')
pub_2.save!
p pub_2
file_3 = URI.open('https://images.unsplash.com/photo-1574096079513-d8259312b785?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
pub_3 = Pub.new(name: "The racoon saloon", description:"excellent taxidermy", address:"400 Geffrye St, London E2 8HZ")
pub_3.photo.attach(io: file_3, filename: 'nes.png', content_type: 'image/png')
pub_3.save!
p pub_3
file_4 = URI.open('https://images.unsplash.com/photo-1560840881-4bbcd415a9ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80')
pub_4 = Pub.new(name: "The glitter horse", description:"wonderful pub", address:"93 Leonard St, London EC2A 4RD")
pub_4.photo.attach(io: file_4, filename: 'nes.png', content_type: 'image/png')
pub_4.save!
p pub_4


pb1 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_1.id)
pb2 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_1.id)
pb3 = PubBeer.create!(pub_id: pub_3.id, beer_id: beer_1.id)
pb4 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_2.id)
pb5 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_2.id)
pb6 = PubBeer.create!(pub_id: pub_3.id, beer_id: beer_2.id)
pb7 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_3.id)
pb8 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_3.id)
pb9 = PubBeer.create!(pub_id: pub_3.id, beer_id: beer_3.id)
pb10 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_4.id)
pb11 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_4.id)
pb12 = PubBeer.create!(pub_id: pub_3.id, beer_id: beer_4.id)
pb13 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_5.id)
pb14 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_5.id)
pb15 = PubBeer.create!(pub_id: pub_3.id, beer_id: beer_5.id)
pb16 = PubBeer.create!(pub_id: pub_4.id, beer_id: beer_1.id)
pb17 = PubBeer.create!(pub_id: pub_4.id, beer_id: beer_6.id)
pb18 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_7.id)
pb19 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_8.id)
pb20 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_9.id)
pb21 = PubBeer.create!(pub_id: pub_3.id, beer_id: beer_10.id)
pb22 = PubBeer.create!(pub_id: pub_3.id, beer_id: beer_7.id)
pb23 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_10.id)
pb24 = PubBeer.create!(pub_id: pub_4.id, beer_id: beer_9.id)
choice_1 = Choice.create!(user: user, pub: pub_1, beer: beer_1)
choice_1 = Choice.create!(user: user, pub: pub_2, beer: beer_4)
choice_1 = Choice.create!(user: user, pub: pub_3, beer: beer_2)














