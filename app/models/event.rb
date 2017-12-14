class Event < ApplicationRecord
  has_many :guests, as: :guestlist
  has_many :guestlists
  has_many :ambassadors
end