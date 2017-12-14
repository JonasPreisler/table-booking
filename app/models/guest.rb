class Guest < ApplicationRecord
    belongs_to :guestlist

    def guestlist_objects
      Guestlist.where(id: self.guestlist_id.reject(&:empty?)).map(&:id).join(",")
    end
end
