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
p wheat_beer

file_b1 = URI.open('https://honestbrew.co.uk/wp-content/uploads/Brixton-Atlantic-APA3.jpg')
beer_1 = Beer.new(name: "Atlantic", description: "Brixton’s famous street market winds down Atlantic Road, brimming with exotic wares. Bold aromas and flavours compete for passing attention, a bit like our Atlantic A.P.A. A deluge of aroma hops after the boil and generous dry hopping deliver a juicy tropical flavour. Extra Pale malt keeps it crisp and lets the hops rule.")
beer_1.photo.attach(io: file_b1, filename: 'nes.png', content_type: 'image/png')
beer_1.save!

BeerTag.create!(beer: beer_1, tag: fruity);
BeerTag.create!(beer: beer_1, tag: pale);
BeerTag.create!(beer: beer_1, tag: lager);

file_b2 = URI.open('https://3.bp.blogspot.com/-FlfO0t6vX54/UrFX0AvRtRI/AAAAAAAACyU/UyXr-DYeHjo/s1600/beer+15.11.13_002aa.jpg')
beer_2 = Beer.new(name: "Electric I.P.A.", description: "Inspired by Electric Avenue, the beating heart of Brixton, our lively IPA is an assault on the senses – much like its namesake. This beer is all about the interplay between malt and hop – the perfect harmony of sweet and bitter.")
beer_2.photo.attach(io: file_b2, filename: 'nes.png', content_type: 'image/png')
beer_2.save!

BeerTag.create!(beer: beer_2, tag: wheat_beer);
BeerTag.create!(beer: beer_2, tag: pale);
BeerTag.create!(beer: beer_2, tag: fresh);

file_b3 = URI.open('https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-9/83696824_2698836936819541_6847041158250496_o.jpg?_nc_cat=108&_nc_sid=da1649&_nc_ohc=U3vTFs-ctBMAX9FNWeh&_nc_ht=scontent-lht6-1.xx&oh=33d83e8bb389b2bb7c1f44ef046036f7&oe=5E8F2887')
beer_3 = Beer.new(name: "Gamma Ray", description: "If beer didn’t already exist you suspect Beavertown would’ve invented it, such is the ease at which it churns out exciting new brews. Before embarking on their more unusual flavour combinations (such as sea salt and sour cherry) check out their American Pale Ale, a class act laden with fresh hop goodness.")
beer_3.photo.attach(io: file_b3, filename: 'nes.png', content_type: 'image/png')
beer_3.save!

BeerTag.create!(beer: beer_3, tag: hoppy);
BeerTag.create!(beer: beer_3, tag: sweet);
BeerTag.create!(beer: beer_3, tag: strong);

file_b4 = URI.open('https://pbs.twimg.com/media/DvgIt-DWkAAM1w-.jpg')
beer_4 = Beer.new(name: "It Only Takes A Minute", description: "Brewed at our Tottenham Stadium Microbrewery, the idea behind this was to create a refreshing and crisp beer for anytime. We decided to use a Kölsch yeast to give the beer a cleaner flavour, fermenting it at a lower temperature than other ale yeasts.")
beer_4.photo.attach(io: file_b4, filename: 'nes.png', content_type: 'image/png')
beer_4.save!

BeerTag.create!(beer: beer_4, tag: sweet);
BeerTag.create!(beer: beer_4, tag: medium);
BeerTag.create!(beer: beer_4, tag: dark);
BeerTag.create!(beer: beer_4, tag: ale);

file_b5 = URI.open('https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-9/82178712_2854008057952968_5476806016546897920_o.jpg?_nc_cat=103&_nc_sid=2d5d41&_nc_ohc=mb4keZbfogoAX-Z0zEE&_nc_ht=scontent-lht6-1.xx&oh=c73a3f0fb9a2ea7c075bd569601b76c4&oe=5E915390')
beer_5 = Beer.new(name: "Coldfront Baltic Porter", description: "Bracing winter brew, dark as night and strong as a beast blowing in from the east. This one is all about layer upon layers of rich, flavoursome malts – blankets of protection from the elements, and fortification for maximum flavour. Brewed with a German lager yeast it’s incredibly drinkable and moreish.")
beer_5.photo.attach(io: file_b5, filename: 'nes.png', content_type: 'image/png')
beer_5.save!

BeerTag.create!(beer: beer_5, tag: stout);
BeerTag.create!(beer: beer_5, tag: gluten_free);
BeerTag.create!(beer: beer_5, tag: dark);
p beer_1

file_b6 = URI.open('https://scontent-lhr8-1.xx.fbcdn.net/v/t1.0-9/50286141_2042154465821128_5701163266865102848_o.jpg?_nc_cat=110&_nc_sid=da1649&_nc_ohc=PH_kBY0QFcAAX8iyLfJ&_nc_ht=scontent-lhr8-1.xx&oh=bcbdcf0f5f7409b832f15e4b1f22cfda&oe=5E902CAA')
beer_6 = Beer.new(name: "Logistical Nightmare", description: "This full, thick, and creamy stout is brewed by our amazing Beaver express Drivers. A perfect match for the winter season with aromas of Dark Chocolate, Vanilla, Roasted Malt and luscious Black Forest Fruits. Full of sweetness from the lactose, bitterness from the cacao and sealed with a kiss of cherry.")
beer_6.photo.attach(io: file_b6, filename: 'nes.png', content_type: 'image/png')
beer_6.save!

BeerTag.create!(beer: beer_6, tag: pale);
BeerTag.create!(beer: beer_6, tag: sweet);
BeerTag.create!(beer: beer_6, tag: lager);

file_b7 = URI.open('https://p2d7x8x2.stackpathcdn.com/wordpress/wp-content/uploads/2020/01/Enjoy-a-fresh-pint-of-One-of-Our-Own-exclusively-at-the-Tottenham-Hotspur-Stadium-scaled.jpg')
beer_7 = Beer.new(name: "Wit or Wheatout You", description: "Brewer Lidia decided to experiment a bit by souring one part of her brew with Lactobacillus, and ferment the other with wit and wheat yeast (a hell of a tongue-twister!). After blending these halves together, the beer has been infused with lemon zest and toasted coriander seeds.")
beer_7.photo.attach(io: file_b7, filename: 'nes.png', content_type: 'image/png')
beer_7.save!

BeerTag.create!(beer: beer_7, tag: strong);
BeerTag.create!(beer: beer_7, tag: dark);
BeerTag.create!(beer: beer_7, tag: stout);

file_b8 = URI.open('https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-9/42617448_1411363545660244_7832577397806333952_n.jpg?_nc_cat=103&_nc_sid=110474&_nc_ohc=NdOviyYz2hgAX8WA5Ds&_nc_ht=scontent-lht6-1.xx&oh=359493003fa925ed237ec7f32f68e675&oe=5E8E2284')
beer_8 = Beer.new(name: "Camden Pale Ale", description: "Made with American hops, it’s still got all the punch of a pale ale. Just less shouty.")
beer_8.photo.attach(io: file_b8, filename: 'nes.png', content_type: 'image/png')
beer_8.save!

BeerTag.create!(beer: beer_8, tag: strong);
BeerTag.create!(beer: beer_8, tag: gluten_free);
BeerTag.create!(beer: beer_8, tag: ale);
beer_8.save!

file_b9 = URI.open('https://scontent-lhr8-1.xx.fbcdn.net/v/t1.0-9/52908203_1038871772903652_2649282862083211264_o.jpg?_nc_cat=109&_nc_sid=110474&_nc_ohc=uXOf5EWUAuMAX9F3r1c&_nc_ht=scontent-lhr8-1.xx&oh=e8005e22ac2826d1a70bc9f4b24c120f&oe=5E904ABF')
beer_9 = Beer.new(name: "Yakima Red Ale", description: "British and German malts team up with five Yakima Valley American hops to create a vibrant and fruity red ale. As lively and colourful as the people that brew it.")
beer_9.photo.attach(io: file_b9, filename: 'nes.png', content_type: 'image/png')
beer_9.save!

BeerTag.create!(beer: beer_9, tag: hoppy);
BeerTag.create!(beer: beer_9, tag: sweet);
BeerTag.create!(beer: beer_9, tag: ale);

file_b10 = URI.open('https://ouhouse.files.wordpress.com/2018/09/camden-versus-2.jpg?w=584&h=883')
beer_10 = Beer.new(name: "Camden Off Menu IPA", description: "Resisting piling up a variety of hops like toppings on a burger, we held the pickles and did things our way. Sandwiching together light malts, clean Cali ale yeast and early harvest Simcoe hops. Just what the brewers ordered.")
beer_10.photo.attach(io: file_b10, filename: 'nes.png', content_type: 'image/png')
beer_10.save!

BeerTag.create!(beer: beer_10, tag: strong);
BeerTag.create!(beer: beer_10, tag: fresh);
BeerTag.create!(beer: beer_10, tag: ale);

file_b11 = URI.open('https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-9/53661779_2291280454225734_1154098613408759808_o.jpg?_nc_cat=108&_nc_sid=2d5d41&_nc_ohc=ds7xuxvRlt0AX8uULUV&_nc_ht=scontent-lht6-1.xx&oh=d174116f96ac1a028093c73f2e4d57e3&oe=5E95CDDE')
beer_11 = Beer.new(name: "Man Gose", description: "This tart and very fruity gose style beer has lashings of juicy,tropical mango from Brixton market. It’s like a pint of summer sunshine, and one of your five a day (!) in one.")
beer_11.photo.attach(io: file_b11, filename: 'nes.png', content_type: 'image/png')
beer_11.save!

BeerTag.create!(beer: beer_11, tag: strong);
BeerTag.create!(beer: beer_11, tag: fresh);
BeerTag.create!(beer: beer_11, tag: ale);

file_b12 = URI.open('https://barmagazine.co.uk/wp-content/uploads/2017/04/Camden-Town-Brewery.jpg')
beer_12 = Beer.new(name: "Camden Hells Lager", description: "Hells is the lovechild of our two favourite German beer styles - Helles and Pilsner. Clean, crisp and dry, it’s the beer we always wanted to drink and the reason we started our brewery. We hope you agree.")
beer_12.photo.attach(io: file_b12, filename: 'nes.png', content_type: 'image/png')
beer_12.save!

BeerTag.create!(beer: beer_12, tag: strong);
BeerTag.create!(beer: beer_12, tag: fresh);
BeerTag.create!(beer: beer_12, tag: ale);

file_b13 = URI.open('https://i.redd.it/rh6ojwfyhdc21.jpg')
beer_13 = Beer.new(name: "Camden Ink", description: "A good head is essential. Especially when it comes to stout. We use nitrogen bubbles to give our Ink Stout its thick, creamy head and smooth finish. And without getting all big headed, we think it’s the finest stout in the land.")
beer_13.photo.attach(io: file_b13, filename: 'nes.png', content_type: 'image/png')
beer_13.save!

BeerTag.create!(beer: beer_13, tag: strong);
BeerTag.create!(beer: beer_13, tag: fresh);
BeerTag.create!(beer: beer_13, tag: ale);

file_b14 = URI.open('https://pbs.twimg.com/media/Ciq5UZJVAAAQ-1i.jpg')
beer_14 = Beer.new(name: "Neck Oil", description: "Light, crisp, punchy, go to beer! A beer that you know you can pick up and appreciate or simply kick back, relax and oil your neck with.")
beer_14.photo.attach(io: file_b14, filename: 'nes.png', content_type: 'image/png')
beer_14.save!

BeerTag.create!(beer: beer_14, tag: strong);
BeerTag.create!(beer: beer_14, tag: fresh);
BeerTag.create!(beer: beer_14, tag: ale);

file_b15 = URI.open('https://untappd.akamaized.net/photos/2019_10_16/7f13dc7ecdb6eb3c2106216f661e64af_640x640.jpg')
beer_15 = Beer.new(name: "Defiance GF Pale", description: "Governs the formation of cross-links between naturally occurring proteins and disulphide bonds between the proteins glutenin and gliadin, to produce this DELICIOUSLY REBELLIOUS fruit salad of a beer, equally enjoyable to those with gluten intolerance, and those who just want a tasty pint.")
beer_15.photo.attach(io: file_b15, filename: 'nes.png', content_type: 'image/png')
beer_15.save!

BeerTag.create!(beer: beer_15, tag: strong);
BeerTag.create!(beer: beer_15, tag: fresh);
BeerTag.create!(beer: beer_15, tag: ale);

file_b16 = URI.open('https://d2joqs9jfh6k92.cloudfront.net/wp-content/uploads/2019/09/24144056/URBAN.HARVEST.132.jpg')
beer_16 = Beer.new(name: "Camden Hells Lager", description: "Harvest is hard work for farmers and a busy time of year for the rest of us. Rush through and it’ll be winter already, so enjoy this plentiful season by sharing some of said plenty and – if you aren’t operating agricultural machinery – a beer.")
beer_16.photo.attach(io: file_b16, filename: 'nes.png', content_type: 'image/png')
beer_16.save!

BeerTag.create!(beer: beer_16, tag: strong);
BeerTag.create!(beer: beer_16, tag: fresh);
BeerTag.create!(beer: beer_16, tag: ale);

file_b17 = URI.open('https://scontent-lhr8-1.xx.fbcdn.net/v/t1.0-9/59299222_2369227973097648_2289294878179328000_o.jpg?_nc_cat=107&_nc_sid=2d5d41&_nc_ohc=7Etwh2e7JQAAX_j1Bmb&_nc_ht=scontent-lhr8-1.xx&oh=feac1901a387b1ec2267af363f4ef84f&oe=5E91E9CC')
beer_17 = Beer.new(name: "Ribboncutter Pale Ale", description: "Double Dry Hopped Pale Ale – Low bitterness and intensely hoppy. Double-dry hopped with abundant aromatic hops and flavours of tropical and stone fruits.")
beer_17.photo.attach(io: file_b17, filename: 'nes.png', content_type: 'image/png')
beer_17.save!

BeerTag.create!(beer: beer_17, tag: strong);
BeerTag.create!(beer: beer_17, tag: fresh);
BeerTag.create!(beer: beer_17, tag: ale);

file_b18 = URI.open('https://scontent-lhr8-1.xx.fbcdn.net/v/t1.0-9/67483735_2347431858626719_8553339147060772864_o.jpg?_nc_cat=107&_nc_sid=da1649&_nc_ohc=S2GUgRNO26IAX8AA9m1&_nc_ht=scontent-lhr8-1.xx&oh=fdf701655c327e801896efab2ecadddc&oe=5E8FC8F2')
beer_18 = Beer.new(name: "Bloody ‘Ell", description: "A smack of citrus with hints of warm blood orange aromas brought on by refined malt bill and loads of juicy hops. All hail Bloody ‘Ell!")
beer_18.photo.attach(io: file_b18, filename: 'nes.png', content_type: 'image/png')
beer_18.save!

BeerTag.create!(beer: beer_18, tag: strong);
BeerTag.create!(beer: beer_18, tag: fresh);
BeerTag.create!(beer: beer_18, tag: ale);

file_1 = URI.open('https://www.camdentownbrewery.com/content/gallery/_600x600/camden-brewery-bar-entrance.jpg')
pub_1 = Pub.new(name: "Camden's Daughter", address:"289 Kentish Town Road, NW5 2JS")
pub_1.photo.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')
pub_1.save!
p pub_1

file_2 = URI.open('https://www.brixtonbrewery.com/wp-content/uploads/2020/01/Brixton-Tap-Room-023.jpg')
pub_2 = Pub.new(name: "Brixton Brewery", address:"547, Brixton Station Road, SW9 8PF")
pub_2.photo.attach(io: file_2, filename: 'nes.png', content_type: 'image/png')
pub_2.save!
p pub_2

file_3 = URI.open('https://static1.squarespace.com/static/574ef2e1c2ea51f137551452/574ef5cf22482eb3b4cdcab4/599ec121e58c62bd9c786e46/1509467149374/craft-beer-co-old-street-3.jpg')
pub_3 = Pub.new(name: "The Craft Beer Co.", address:"233 Old St, EC1V 9HE")
pub_3.photo.attach(io: file_3, filename: 'nes.png', content_type: 'image/png')
pub_3.save!
p pub_3

file_4 = URI.open('https://www.star-tavern-belgravia.co.uk/-/media/Sites/Microsites/S/The-Star-Tavern-_-P085/Images/2017-new-images/Gallery-Main/startavern_0445.jpg')
pub_4 = Pub.new(name: "The Star Tavern", address:"6 Belgrave Mews W, SW1X 8HT")
pub_4.photo.attach(io: file_4, filename: 'nes.png', content_type: 'image/png')
pub_4.save!
p pub_4

file_5 = URI.open('https://smokehouseislington.co.uk/wp-content/uploads/2015/07/GH9A8722Smokehouse.jpg')
pub_5 = Pub.new(name: "Smokehouse", address:"69 Canonbury Rd, N1 2DG")
pub_5.photo.attach(io: file_5, filename: 'nes.png', content_type: 'image/png')
pub_5.save!
p pub_5

file_6 = URI.open('https://static.designmynight.com/uploads/2013/10/crate-brewery-cana-optimised.jpg')
pub_6 = Pub.new(name: "Crate Brewery", address:"14 Queens Yard, E9 5EN")
pub_6.photo.attach(io: file_6, filename: 'nes.png', content_type: 'image/png')
pub_6.save!
p pub_6

file_7 = URI.open('https://relicinteriorslondon.files.wordpress.com/2017/01/ghostwhale_049.jpg')
pub_7 = Pub.new(name: "Ghost Whale", address:"70 Atlantic Road, SW9 8PX")
pub_7.photo.attach(io: file_7, filename: 'nes.png', content_type: 'image/png')
pub_7.save!
p pub_7

file_8 = URI.open('http://knowledgeoflondon.com/images/grenadier.jpg')
pub_8 = Pub.new(name: "The Grenadier", address:"18 Wilton Row, SW1X 7NR")
pub_8.photo.attach(io: file_8, filename: 'nes.png', content_type: 'image/png')
pub_8.save!
p pub_8

file_9 = URI.open('https://thecitylane.com/wp-content/uploads/2016/08/IMG_9624.jpg')
pub_9 = Pub.new(name: "The Earl of Essex", address:"25 Danbury Street, N1 8LE")
pub_9.photo.attach(io: file_9, filename: 'nes.png', content_type: 'image/png')
pub_9.save!
p pub_9

file_10 = URI.open('https://media.timeout.com/images/105409251/1372/772/image.jpg')
pub_10 = Pub.new(name: "The French House, Soho", address:"49 Dean St, W1D 5BG")
pub_10.photo.attach(io: file_10, filename: 'nes.png', content_type: 'image/png')
pub_10.save!
p pub_10
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

pb25 = PubBeer.create!(pub_id: pub_5.id, beer_id: beer_10.id)
pb26 = PubBeer.create!(pub_id: pub_6.id, beer_id: beer_10.id)
pb27 = PubBeer.create!(pub_id: pub_7.id, beer_id: beer_10.id)
pb28 = PubBeer.create!(pub_id: pub_8.id, beer_id: beer_11.id)
pb29 = PubBeer.create!(pub_id: pub_9.id, beer_id: beer_11.id)
pb30 = PubBeer.create!(pub_id: pub_10.id, beer_id: beer_11.id)
pb31 = PubBeer.create!(pub_id: pub_5.id, beer_id: beer_12.id)
pb32 = PubBeer.create!(pub_id: pub_6.id, beer_id: beer_12.id)
pb33 = PubBeer.create!(pub_id: pub_7.id, beer_id: beer_12.id)
pb34 = PubBeer.create!(pub_id: pub_8.id, beer_id: beer_13.id)
pb35 = PubBeer.create!(pub_id: pub_9.id, beer_id: beer_13.id)
pb36 = PubBeer.create!(pub_id: pub_10.id, beer_id: beer_13.id)
pb37 = PubBeer.create!(pub_id: pub_5.id, beer_id: beer_14.id)
pb38 = PubBeer.create!(pub_id: pub_6.id, beer_id: beer_14.id)
pb39 = PubBeer.create!(pub_id: pub_7.id, beer_id: beer_14.id)
pb40 = PubBeer.create!(pub_id: pub_8.id, beer_id: beer_15.id)
pb40 = PubBeer.create!(pub_id: pub_9.id, beer_id: beer_15.id)
pb40 = PubBeer.create!(pub_id: pub_10.id, beer_id: beer_16.id)
pb40 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_16.id)
pb40 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_16.id)
pb40 = PubBeer.create!(pub_id: pub_10.id, beer_id: beer_17.id)
pb40 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_17.id)
pb40 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_17.id)
pb40 = PubBeer.create!(pub_id: pub_10.id, beer_id: beer_18.id)
pb40 = PubBeer.create!(pub_id: pub_1.id, beer_id: beer_18.id)
pb40 = PubBeer.create!(pub_id: pub_2.id, beer_id: beer_18.id)


# Beer.all.each do |beer|
#   Pub.sample(7).each do |pub|
#     PubBeer.create!(beer_id: beer.id, pub_id: pub.id)
#   end
# end




# choice_1 = Choice.create!(user: user, pub: pub_1, beer: beer_1)
# choice_1 = Choice.create!(user: user, pub: pub_2, beer: beer_4)
# choice_1 = Choice.create!(user: user, pub: pub_3, beer: beer_2)














