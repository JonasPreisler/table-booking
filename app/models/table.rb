class Table < ApplicationRecord
  belongs_to :guests
  has_many :events
end
