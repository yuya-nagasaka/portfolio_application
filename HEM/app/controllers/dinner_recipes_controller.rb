class DinnerRecipesController < ApplicationController
  
  def create
    dinner = Dinner.new
    dinner.user_id = current_user.id
    dinner.save
    dinner_recipe = DinnerRecipe.new
    dinner_recipe.recipe_id = params[:recipe_id]
    dinner_recipe.dinner_id = current_user.dinner.id
    dinner_recipe.save
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    dinner_recipe = DinnerRecipe.find(params[:id])
    dinner_recipe.delete
    redirect_back(fallback_location: root_path)
  end
  
end
