# frozen_string_literal: true

class RecipeIngredientsController < ApplicationController
  def destroy
    recipe_ingredient = RecipeIngredient.find(params[:id])
    recipe_ingredient.delete
    redirect_back(fallback_location: root_path)
  end

  def update
    recipe_ingredient = RecipeIngredient.find(params[:id])
    recipe_ingredient.update(recipe_ingredient_params)
    redirect_back(fallback_location: root_path)
  end

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:quantity)
  end
end
