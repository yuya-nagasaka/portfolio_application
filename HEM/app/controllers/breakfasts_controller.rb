class BreakfastsController < ApplicationController
  
  def new
    @breakfast = Breakfast.new
    @recipes = Recipe.search(params[:search])
    @breakfast_recipes =BreakfastRecipe.all
  end
 
  private
   
  def Recipe.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"]) 
      # where(['ingredient(カラム) LIKE ?', "%#{search(検索文字)}%"]) 
    else
      all
    end
  end
end
