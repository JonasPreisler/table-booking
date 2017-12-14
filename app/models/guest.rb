class Guest < ApplicationRecord
    belongs_to :guestlist
    belongs_to :ambassador

    def guestlist_objects
      Guestlist.where(id: self.guestlist_id.reject(&:empty?)).map(&:id).join(",")
    end

    def ambassador_objects
      Ambassador.where(name: self.ambassador_name.reject(&:empty?)).map(&:name).join(",")
    end
end
