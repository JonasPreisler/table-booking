class Guest < ApplicationRecord
  belongs_to :event
  has_many :events
end
