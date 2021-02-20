class BreakfastIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :breakfast
end
