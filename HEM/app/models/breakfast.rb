class Breakfast < ApplicationRecord
  
  has_many :breakfast_ingredients
  has_many :ingredients,through: :breakfast_ingredients
  has_many :breakfast_recipes
  has_many :recipes,through: :breakfast_recipes
  belongs_to :user
  
end
