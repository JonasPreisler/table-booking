class Guestlist < ApplicationRecord
  attr_accessible :guests, :guestlist, :guest_id, :first_name, :last_name, :gender, :guestlist_id
  has_many :guests
  belongs_to :event

    def event_objects
      Event.where(id: self.event.reject(&:empty?)).map(&:title).join(",")
    end
end
