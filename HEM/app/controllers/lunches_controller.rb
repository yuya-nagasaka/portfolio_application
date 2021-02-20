class LunchesController < ApplicationController
  
  def new
    @lunch = Lunch.new
    @search_recipes = Recipe.search(params[:search])
    @all_lunch_recipes =LunchRecipe.all
    @all_recipes = Recipe.all
    
  end

end
