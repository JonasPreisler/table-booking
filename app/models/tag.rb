class Tag < ApplicationRecord
  has_many :taggings
  has_many :guests, through: :taggings, dependent: :destroy
end
