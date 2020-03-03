class Beer < ApplicationRecord
  has_many :choices
  has_many :beer_tags
  has_many :pub_beers
  has_many :pubs, through: :pub_beers
end
