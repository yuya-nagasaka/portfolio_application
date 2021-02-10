class RecipesController < ApplicationController
  
  def new
    @recipe = Recipe.new
    @ingredient = Ingredient.search(params[:search])
    @draft_ingredients = current_user.draft_ingredients
  end
  
  def create
    recipe = Recipe.new(recipe_params)
    recipe.user_id = current_user.id
    recipe.save!
    draft_ingredients = current_user.draft_ingredients.all
    draft_ingredients.each do |draft_ingredient|
    recipe_ingredients = recipe.recipe_ingredients.new
    recipe_ingredients.ingredient_id = draft_ingredient.ingredient_id
    recipe_ingredients.quantity = draft_ingredient.quantity
    recipe_ingredients.save
    end
    current_user.draft_ingredients.destroy_all
    redirect_back(fallback_location: root_path)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def index
    @recipes = Recipe.all
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.search(params[:search])
    @draft_ingredients = current_user.draft_ingredients
    @recipe_ingredients = @recipe.recipe_ingredients
  end
  
  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    draft_ingredients = current_user.draft_ingredients.all
    draft_ingredients.each do |draft_ingredient|
    recipe_ingredients = recipe.recipe_ingredients.new
    recipe_ingredients.ingredient_id = draft_ingredient.ingredient_id
    recipe_ingredients.quantity = draft_ingredient.quantity
    recipe_ingredients.save
    end
    current_user.draft_ingredients.destroy_all
    redirect_back(fallback_location: root_path)
    
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
  
  def Ingredient.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"]) 
      # where(['ingredient(カラム) LIKE ?', "%#{search(検索文字)}%"]) 
    else
      all
    end
  end
end