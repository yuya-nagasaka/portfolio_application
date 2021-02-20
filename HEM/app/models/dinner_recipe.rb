class DinnerRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :dinner
end
