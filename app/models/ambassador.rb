class Ambassador < ApplicationRecord
  has_many :guests
  has_many :events
  belongs_to :guestlist

end
