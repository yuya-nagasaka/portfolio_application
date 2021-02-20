class RecipesController < ApplicationController
  
  before_action :correct,only:[:edit]
  before_action :set_recipe,only:[:show,:edit,:update]
  before_action :set_search_ingredient,only:[:new,:create,:edit,:update]

  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      draft_ingredients = current_user.draft_ingredients.all
      draft_ingredients.each do |draft_ingredient|
        recipe_ingredients = @recipe.recipe_ingredients.new
        recipe_ingredients.ingredient_id = draft_ingredient.ingredient_id
        recipe_ingredients.quantity = draft_ingredient.quantity
        recipe_ingredients.save
      end
      current_user.draft_ingredients.destroy_all
      redirect_to user_path(current_user)
    else 
      render "new"
    end
  end

  def show
    @recipe_ingredients = @recipe.recipe_ingredients
  end
  
  def index
    @recipes = Recipe.all
  end
  
  def edit
    @draft_ingredients = current_user.draft_ingredients
    @recipe_ingredients = @recipe.recipe_ingredients
  end
  
  def update
    @recipe_ingredients = @recipe.recipe_ingredients
    @draft_ingredients = current_user.draft_ingredients
    if @recipe.update(recipe_params)
    draft_ingredients = current_user.draft_ingredients.all
    draft_ingredients.each do |draft_ingredient|
      recipe_ingredients = @recipe.recipe_ingredients.new
      recipe_ingredients.ingredient_id = draft_ingredient.ingredient_id
      recipe_ingredients.quantity = draft_ingredient.quantity
      recipe_ingredients.save
    end
    current_user.draft_ingredients.destroy_all
    redirect_back(fallback_location: root_path)
    else
      render "edit"
    end
  end
  
  
  def destroy
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect_back(fallback_location: root_path)
  end
  
  private
  
  def recipe_params
    params.require(:recipe).permit(:name,:method,:user_id)
  end
  
  def  correct                                                       
    unless 
      @recipe.user.id == current_user.id
      redirect_to user_path(current_user)
    end 
  end
  
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
  
  def set_search_ingredient
    @ingredient = Ingredient.search(params[:search])
  end
  
end