class Guestlist < ApplicationRecord
  has_many :guests
  belongs_to :event

    def event_objects
      Event.where(id: self.event.reject(&:empty?)).map(&:title).join(",")
    end
    
    def ambassador_objects
      Ambassador.where(id: self.ambassador.reject(&:empty?)).map(&:name).join(",")
    end

end
