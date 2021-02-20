class LunchIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :lunch
end
