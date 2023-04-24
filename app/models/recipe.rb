class Recipe < ApplicationRecord
    validates :title, presence: true
    validates :ingredients, presence: true, length: { minimum: 10 }
end

