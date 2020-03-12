class Pub < ApplicationRecord
  has_many :choices, dependent: :destroy
  has_many :users
  has_many :users, through: :choices
  has_many :pub_beers, dependent: :destroy
  has_many :beers, through: :pub_beers
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  before_save :check_validation


  def check_validation
    if self.latitude == nil
      self.latitude = 51.531662
      self.longitude = -0.0770283
    end
  end
end
