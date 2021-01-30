class Lunch < ApplicationRecord
  has_many :ingredients,through: :lunch_ingredients
  has_many :lunch_ingredients
  has_many :recipes,through: :lunch_recipes
  has_many :lunch_recipes
end
