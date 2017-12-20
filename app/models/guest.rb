class Guest < ApplicationRecord
    validates :ambassador_name, presence: true
    belongs_to :guestlist
    belongs_to :ambassador

    def guestlist_objects
      Guestlist.where(id: self.guestlist_id.reject(&:empty?)).map(&:id).join(",")
    end

    def ambassador_objects
      Ambassador.where(id: self.ambassador_name.reject(&:empty?)).map(&:id).join(",")
    end
end