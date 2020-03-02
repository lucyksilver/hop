class PubBeer < ApplicationRecord
  belongs_to :pub
  belongs_to :beer
end
