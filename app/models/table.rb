class Table < ApplicationRecord
  has_many :guests
  belongs_to :event



    def table_objects
      Table.where(id: self.table_id.reject(&:empty?)).map(&:id).join(",")
    end
end
