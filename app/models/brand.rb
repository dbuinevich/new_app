class Brand < ApplicationRecord
    has_many :models, dependent: :destroy
    has_many :offers
    accepts_nested_attributes_for :models
end
