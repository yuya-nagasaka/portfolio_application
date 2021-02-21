# frozen_string_literal: true

class BreakfastRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :breakfast
end
