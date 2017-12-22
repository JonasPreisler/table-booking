class Guest < ApplicationRecord
    validate :valid_guest_creation
    belongs_to :guestlist
    belongs_to :ambassador
    
    def guestlist_objects
      Guestlist.where(id: self.guestlist_id.reject(&:empty?)).map(&:id).join(",")
    end

    def ambassador_objects
      Ambassador.where(id: self.ambassador_id.reject(&:empty?)).map(&:id).join(",")
    end

  private

    def valid_guest_creation
      if
        Ambassador.where("name = ?", self.ambassador_name).any?
      else
        errors.add(:base, 'Sorry Wrong Ambassador')
      end
    end

end