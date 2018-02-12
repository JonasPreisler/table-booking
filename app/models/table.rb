class Table < ApplicationRecord
  has_many :guests
  has_many :events



    def table_objects
      Table.where(id: self.table_id.reject(&:empty?)).map(&:id).join(",")
    end
end
