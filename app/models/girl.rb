class Girl < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  self.primary_key= :name
end
