# frozen_string_literal: true

class Nutrion < ApplicationRecord
  has_many :ingredients, through: :nutrion_ingredients
  has_many :nutrion_ingredients
end
