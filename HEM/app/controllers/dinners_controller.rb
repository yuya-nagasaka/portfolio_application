class DinnersController < ApplicationController
  
  def new
    @dinner = Dinner.new
    @all_dinner_recipes = DinnerRecipe.all
    @search_recipes = Recipe.search(params[:search])
    @all_recipes = Recipe.all
  end
  
end
