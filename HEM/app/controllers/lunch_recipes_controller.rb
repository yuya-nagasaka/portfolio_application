class LunchRecipesController < ApplicationController
  def create
    lunch = Lunch.new
    lunch.user_id = current_user.id
    lunch.save
    lunch_recipe = LunchRecipe.new
    lunch_recipe.recipe_id = params[:recipe_id]
    lunch_recipe.lunch_id = current_user.lunch.id
    lunch_recipe.save
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    lunch_recipe = LunchRecipe.find(params[:id])
    lunch_recipe.delete
    redirect_back(fallback_location: root_path)
  end
end
