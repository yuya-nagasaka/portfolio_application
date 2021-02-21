# frozen_string_literal: true

class DraftIngredient < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
end
