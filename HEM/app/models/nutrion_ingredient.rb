# frozen_string_literal: true

class NutrionIngredient < ApplicationRecord
  belongs_to :nutrion
  belongs_to :ingredient
end
