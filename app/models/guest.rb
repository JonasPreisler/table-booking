class Guest < ApplicationRecord
    belongs_to :guestlist
    belongs_to :ambassador
    belongs_to :girl

    def guestlist_objects
      Guestlist.where(id: self.guestlist_id.reject(&:empty?)).map(&:id).join(",")
    end

    def ambassador_objects
      Ambassador.where(id: self.ambassador_id.reject(&:empty?)).map(&:id).join(",")
    end
    def girl_objects
      Girl.where(id: self.girl_id.reject(&:empty?)).map(&:id).join(",")
    end
end
