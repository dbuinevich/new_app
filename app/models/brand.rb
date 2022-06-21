class Brand < ApplicationRecord
    scope :created_brands, -> { where.not(brand: nil) } 
    has_many :models, dependent: :destroy
    has_many :offers, dependent: :destroy
    accepts_nested_attributes_for :models
    validates :brand, presence: true
end
