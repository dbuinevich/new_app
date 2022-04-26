class Brand < ApplicationRecord
    has_many :models, dependent: :destroy
    accepts_nested_attributes_for :models
end
