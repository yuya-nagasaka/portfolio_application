# frozen_string_literal: true

class LunchIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :lunch
end
