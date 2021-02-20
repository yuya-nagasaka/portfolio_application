class LunchesController < ApplicationController
  def new
    @lunch = Lunch.new
    @recipes = Recipe.search(params[:search])
    @lunch_recipes =LunchRecipe.all
    @user_lunch = current_user.lunch
    @all_recipes = Recipe.all
    @need_vitaminA = 300
    @need_vitaminB1 = 0.5
    @need_vitaminB2 = 0.6
    @need_vitaminB3 = 6
    @need_vitaminB5 = 2.5
    @need_vitaminB6 = 0.5
    @need_vitaminB12 = 0.8
    @need_vitaminC = 30
    @need_vitaminD = 3
    @need_vitaminE = 2.5
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