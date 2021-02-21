# frozen_string_literal: true

class DinnerIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :dinner
end
