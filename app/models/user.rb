class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :choices
  has_many :likes
  has_many :pubs, through: :choices
  has_many :beers, through: :choices
  has_one_attached :avatar

  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
