class BeerTag < ApplicationRecord
  belongs_to :beer
  belongs_to :tag
end
