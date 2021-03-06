# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :breakfast_recipes
  has_many :breakfasts, through: :breakfast_recipes
  has_many :lunch_recipes
  has_many :lunches, through: :lunch_recipes
  has_many :dinners, through: :dinner_recipes
  has_many :dinner_recipes
  validates :name, presence: true
  validates :name, length: { maximum: 15 }
  validates :method, presence: true
  validates :method, length: { maximum: 300 }
end
