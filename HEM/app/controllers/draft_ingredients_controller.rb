# frozen_string_literal: true

class DraftIngredientsController < ApplicationController
  
  def create
    draft_ingredient = DraftIngredient.new
    draft_ingredient.ingredient_id = params[:ingredient_id]
    draft_ingredient.user_id = current_user.id
    draft_ingredient.save
    redirect_back(fallback_location: root_path)
  end

  def update
    draft_ingredient = DraftIngredient.find(params[:id])
    draft_ingredient.update(draft_ingredient_params)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    draft_ingredient = DraftIngredient.find(params[:id])
    draft_ingredient.delete
    redirect_back(fallback_location: root_path)
  end

  def draft_ingredient_params
    params.require(:draft_ingredient).permit(:quantity)
  end
end
