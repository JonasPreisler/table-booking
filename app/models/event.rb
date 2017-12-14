class Event < ApplicationRecord
  has_many :guests, as: :guestlist
  has_many :guestlists
end