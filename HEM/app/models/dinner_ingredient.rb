class DinnerIngredient < ApplicationRecord
    belongs_to :ingredient
    belongs_to :dinner
end
