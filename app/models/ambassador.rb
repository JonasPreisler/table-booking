class Ambassador < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :guests
  has_many :events
  has_many :guestlists
end
