class Table < ApplicationRecord
  has_many :guests, as: :tablebooking
  has_many :tablebookings


end
