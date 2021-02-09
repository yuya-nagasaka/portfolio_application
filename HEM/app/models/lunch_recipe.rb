class LunchRecipe < ApplicationRecord
    belongs_to :recipe
    belongs_to :lunch
    
end
