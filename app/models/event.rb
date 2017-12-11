class Event < ApplicationRecord
  has_many :guests, dependent: :destroy
end
