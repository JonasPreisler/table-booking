class Promoter < ApplicationRecord
  has_many :guests, as: :guestlist
end
