class Tag < ApplicationRecord
  has_many :beer_tag, dependent: :destroy
end
