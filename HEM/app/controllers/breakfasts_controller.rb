# frozen_string_literal: true

class BreakfastsController < ApplicationController
  def new
    @breakfast = Breakfast.new
    @all_breakfast_recipes = BreakfastRecipe.all
    @search_recipes = Recipe.search(params[:search])
    @all_recipes = Recipe.all
  end
end
