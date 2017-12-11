class Guest < ApplicationRecord
  belongs_to :event
  has_many :events
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, dependent: :destroy
end
