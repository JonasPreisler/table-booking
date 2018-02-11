class Guestlist < ApplicationRecord
  has_many :guests
  belongs_to :event

    def event_objects
      Event.where(id: self.event.reject(&:empty?)).map(&:title).join(",")
    end
    
    def ambassador_objects
      Ambassador.where(id: self.ambassador.reject(&:empty?)).map(&:name).join(",")
    end

    private

    def valid_guest_creation
      if
        Ambassador.where("lower(name) = ?",self.ambassador_name.downcase).any?
      else
        errors.add(:base, 'Sorry Wrong Ambassador')
      end
    end

end
