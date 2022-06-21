class Offer < ApplicationRecord
  belongs_to :model
  belongs_to :brand
  mount_uploaders :image, ImageUploader
  validates_format_of :year, :with => /[1-2]{1}\d{3}/, :message => 'Only 4-digit numbers starting from 1 or 2 allowed' 
  validates_numericality_of :engine_capacity, less_than: 10000, only_integer: true
  validates_numericality_of :price
  belongs_to :user
end
