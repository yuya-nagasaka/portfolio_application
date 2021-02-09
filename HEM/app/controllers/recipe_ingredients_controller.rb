class RecipeIngredientsController < ApplicationController
  def destroy
    recipe_ingredient = RecipeIngredient.find(params[:id])
    recipe_ingredient.delete
    redirect_back(fallback_location: root_path)
  end
end
