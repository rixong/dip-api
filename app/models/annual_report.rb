class AnnualReport < ApplicationRecord
  has_many :repairs
  has_many :reservations
  has_many :cabin_multipliers
end
