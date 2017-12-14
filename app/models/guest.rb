class Guest < ApplicationRecord

    def guestlist_objects
      Guestlist.where(id: self.guestlist.reject(&:empty?)).map(&:id).join(",")
    end
end
