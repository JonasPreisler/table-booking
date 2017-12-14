class Guest < ApplicationRecord
    attr_accessible :guests, :guestlist, :guest_id, :first_name, :last_name, :gender, :guestlist_id
    belongs_to :guestlist

    def guestlist_objects
      Guestlist.where(id: self.guestlist.reject(&:empty?)).map(&:id).join(",")
    end
end
