class Location < ApplicationRecord
  has_many   :players
  validates  :name , presence: true
  validates  :description , presence: true
end