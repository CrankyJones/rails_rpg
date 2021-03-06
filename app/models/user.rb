class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :players

  validates :username,
    presence: true,
    uniqueness: {case_sensitive: false}

  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
