class Repair < ApplicationRecord
  belongs_to :annual_report
  belongs_to :user
  belongs_to :cabin
end
