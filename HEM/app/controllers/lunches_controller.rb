class LunchesController < ApplicationController
  def new
    @lunch = Lunch.new
    @recipes = Recipe.search(params[:search])
    @lunch_recipes =LunchRecipe.all
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
