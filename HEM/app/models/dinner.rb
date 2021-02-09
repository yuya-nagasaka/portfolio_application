class Dinner < ApplicationRecord
  belongs_to :user
  has_many :dinner_ingredients
  has_many :ingredients,through: :dinner_ingredients
  has_many :dinner_recipes
  has_many :recipes,through: :dinner_recipes
end
