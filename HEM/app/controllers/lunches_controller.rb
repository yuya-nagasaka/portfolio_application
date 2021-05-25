# frozen_string_literal: true

class LunchesController < ApplicationController
  def new
    @lunch = Lunch.new
    @all_lunch_recipes = LunchRecipe.all
    @search_recipes = Recipe.search(params[:search])
    @search_recipes = @search_recipes.page(params[:page]).per(5)
    @all_recipes = Recipe.all
  end
end
