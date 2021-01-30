class Dinner < ApplicationRecord
  has_many :ingredients,through: :dinner_ingredients
  has_many :dinner_ingredients
  has_many :recipes,through: :dinner_recipes
  has_many :dinner_recipes
end
