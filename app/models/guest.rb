class Guest < ApplicationRecord
    validate :valid_guest_creation, :ambassador_id, :ambassador_name
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
        Ambassador.where("lower(name) = ?",self.ambassador_name.downcase).any?
      else
        render json: {status: 'ERROR', message:'Guest not saved',
        data:guest.errors},status: :unprocessable_entity
      end
    end
end