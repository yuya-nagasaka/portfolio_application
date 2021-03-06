# frozen_string_literal: true

class BreakfastRecipesController < ApplicationController
  def create
    breakfast = Breakfast.new
    breakfast.user_id = current_user.id
    breakfast.save
    breakfast_recipe = BreakfastRecipe.new
    breakfast_recipe.recipe_id = params[:recipe_id]
    breakfast_recipe.breakfast_id = current_user.breakfast.id
    breakfast_recipe.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    breakfast_recipe = BreakfastRecipe.find(params[:id])
    breakfast_recipe.delete
    redirect_back(fallback_location: root_path)
  end
end
