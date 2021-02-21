# frozen_string_literal: true

class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
    @all_dinner_recipes = DinnerRecipe.all
    @all_recipes = Recipe.all
    @search_recipes = Recipe.search(params[:search])
  end
end
