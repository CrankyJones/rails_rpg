class Enemy < ApplicationRecord
  belongs_to :player
  validates  :type , presence: true
  validates  :attack , presence: true
  validates  :health , presence: true
end