class Recipe < ApplicationRecord
    has_many :comments
    
    validates :title, presence: true
    validates :ingredients, presence: true, length: { minimum: 10 }
end

