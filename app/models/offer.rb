class Offer < ApplicationRecord
#   has_many :offer_attachments
#   accepts_nested_attributes_for :offer_attachments
  mount_uploaders :image, ImageUploader
end
