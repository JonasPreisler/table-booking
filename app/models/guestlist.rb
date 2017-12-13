class Guestlist < ApplicationRecord
  has_many :guest_ids
  belongs_to :event_id

    def event_objects
      Event.where(id: self.event.reject(&:empty?)).map(&:title).join(",")
    end
end
