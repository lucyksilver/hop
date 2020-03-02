class Choice < ApplicationRecord
  belongs_to :pub
  belongs_to :beer
  belongs_to :user
end
