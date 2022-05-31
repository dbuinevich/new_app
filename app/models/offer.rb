class Offer < ApplicationRecord
  belongs_to :model
  belongs_to :brand
  mount_uploaders :image, ImageUploader
end
