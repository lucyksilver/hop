class Pub < ApplicationRecord
  has_many :choices
  has_many :users
  has_many :users, through: :choices
  has_many :pub_beers
  has_many :beers, through: :pub_beers

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
