class Guestlist < ApplicationRecord

  has_many :guests
  belongs_to :event

    def event_objects
      Event.where(id: self.event.reject(&:empty?)).map(&:title).join(",")
    end
end
