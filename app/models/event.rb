class Event < ApplicationRecord
  has_many :guests, as: :guestlist
end