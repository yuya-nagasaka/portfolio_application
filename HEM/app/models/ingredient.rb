class Ingredient < ApplicationRecord
  has_many :recipes,through: :recipe_ingredients
  has_many :recipe_ingredients
  has_many :nutrions,through: :nutrion_ingredients
  has_many :nutrion_ingredients
end
