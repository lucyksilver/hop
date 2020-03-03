class Pub < ApplicationRecord
  has_many :choices
  has_many :users
  has_many :pub_beers
end
