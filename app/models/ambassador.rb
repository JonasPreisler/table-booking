class Ambassador < ApplicationRecord
  has_many :guests
  has_many :events

end
