class BreakfastsController < ApplicationController
  
  def new
    @breakfast = Breakfast.new
    @breakfast_recipes = BreakfastRecipe.all
    @recipes = Recipe.search(params[:search])
    @all_recipes = Recipe.all
  end
 
  private
   
  def Recipe.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"]) 
    else
      all
    end
  end
end
