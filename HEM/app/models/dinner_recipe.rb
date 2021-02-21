# frozen_string_literal: true

class DinnerRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :dinner
end
