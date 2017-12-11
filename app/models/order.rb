class Order < ApplicationRecord
  mount_uploader :image, ImageUploader
  attr_accessor :image
  belongs_to :customer
  belongs_to :staff
  has_one :measurement
end
