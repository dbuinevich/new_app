class Model < ApplicationRecord
    belongs_to :brand, foreign_key: true
end
