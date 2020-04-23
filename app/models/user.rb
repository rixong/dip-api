class User < ApplicationRecord
  has_many :reservations
  has_many :cabins, through: :reservations
  has_many :repairs

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  has_secure_password
end
