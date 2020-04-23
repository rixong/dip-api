class User < ApplicationRecord
  has_many :reservations
  has_many :cabins, through: :reservations
  has_many :repairs

  has_secure_password
end
