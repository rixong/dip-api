class Cabin < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  has_many :cabin_multipliers
end
