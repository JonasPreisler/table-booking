class Guest < ApplicationRecord
  has_one :events
  has_and_belongs_to_many :guestslists
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, dependent: :destroy
end
