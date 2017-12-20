class Guest < ApplicationRecord
    belongs_to :guestlist
    belongs_to :ambassador
    validates :typ_ambassador_name, presence: true

    def guestlist_objects
      Guestlist.where(id: self.guestlist_id.reject(&:empty?)).map(&:id).join(",")
    end

    def ambassador_objects
      Ambassador.where(id: self.ambassador_id.reject(&:empty?)).map(&:id).join(",")
    end
end
