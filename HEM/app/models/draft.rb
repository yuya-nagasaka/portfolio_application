# frozen_string_literal: true

class Draft < ApplicationRecord
  has_many :ingredients, through: :draft_ingredients
  has_many :draft_ingredients
end
