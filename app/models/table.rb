class Table < ApplicationRecord
  has_many :guests, as: :guestlist
  has_many :tablebookings
  has_many :events
end
