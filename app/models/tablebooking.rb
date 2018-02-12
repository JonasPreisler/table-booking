class Tablebooking < ApplicationRecord
  has_one :guest
  has_one :guestlist
  belongs_to :event

  def table_objects
    Table.where(id: self.table_id.reject(&:empty?)).map(&:id).join(",")
  end

  def guestlist_objects
    Guestlist.where(id: self.guestlist_id.reject(&:empty?)).map(&:id).join(",")
  end
end
