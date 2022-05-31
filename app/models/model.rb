class Model < ApplicationRecord
    validates :brand_id, presence: true
    belongs_to :brand
    has_many :offers
    accepts_nested_attributes_for :brand
end
