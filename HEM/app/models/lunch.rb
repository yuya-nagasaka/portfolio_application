class Lunch < ApplicationRecord
  has_many :lunch_ingredients
  has_many :ingredients,through: :lunch_ingredients
  has_many :lunch_recipes
  has_many :recipes,through: :lunch_recipes
  belongs_to :user
end
