class BreakfastRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :breakfast
end
