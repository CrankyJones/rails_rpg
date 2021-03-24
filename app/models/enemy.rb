class Enemy < ApplicationRecord
  belongs_to :player
  validates  :monster , presence: true
  validates  :attack , presence: true
  validates  :health , presence: true
end