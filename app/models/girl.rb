class Girl < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  self.primary_key = :name
  has_many :guests
  has_many :events
  has_many :guestlists
end