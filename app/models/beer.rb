class Beer < ApplicationRecord
  has_many :choices
  has_many :beer_tags
  has_many :pub_beers
  has_many :tags, through: :beer_tags
  has_many :pubs, through: :pub_beers

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: :name,
    using: {
      tsearch: { prefix: true }
    }
end
