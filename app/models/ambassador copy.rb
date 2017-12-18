class Ambassador < ApplicationRecord
  extend FriendlyId
  self.primary_key = :name
  friendly_id :name, use: :slugged
  has_many :guests
  has_many :events
  has_many :guestlists
end