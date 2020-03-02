class Beer < ApplicationRecord
  has_many :choices
  has_many :beer_tag
  has_many :pub_beer
end
