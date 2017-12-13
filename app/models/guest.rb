class Guest < ApplicationRecord
    belongs_to :guestlist, polymorphic: true

    def guestlist_objects
      Guestlist.where(id: self.guestlist.reject(&:empty?)).map(&:title).join(",")
    end
end
