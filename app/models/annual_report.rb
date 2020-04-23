class AnnualReport < ApplicationRecord
  has_many :repairs
  has_many :reservations

end
