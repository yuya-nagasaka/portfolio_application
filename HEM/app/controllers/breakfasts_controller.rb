# frozen_string_literal: true

class BreakfastsController < ApplicationController
  def new
    @breakfast = Breakfast.new
    @all_breakfast_recipes = BreakfastRecipe.all
    @search_recipes = Recipe.search(params[:search])
    @search_recipes = @search_recipes.page(params[:page]).per(5)
    @all_recipes = Recipe.all
  end
end
