class Player < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many   :enemies
  validates  :role, presence: true
  validates  :level, presence: true
  validates  :attack, presence: true
  validates  :health, presence: true
end