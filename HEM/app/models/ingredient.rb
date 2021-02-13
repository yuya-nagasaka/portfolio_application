class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes,through: :recipe_ingredients
  has_many :draft_ingredients
  has_many :drafts,through: :draft_ingredients
end
