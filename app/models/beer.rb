class Beer < ApplicationRecord
  has_many :choices
  has_many :beer_tags
  has_many :pub_beers
  has_many :likes
  has_many :tags, through: :beer_tags
  has_many :pubs, through: :pub_beers
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: :name,
    using: {
      tsearch: { prefix: true }
    }

  def closest_distance(user)
    return 0 if pubs.empty?
    distances = pubs.geocoded.map do |pub|
      Geocoder::Calculations.distance_between([pub.latitude, pub.longitude],[user.latitude, user.longitude])
    end

    if distances
      return distances.min
    else
      return 0
    end
  end

  def liked_by(user)
    self.likes.where(user: user).any?
  end
end
