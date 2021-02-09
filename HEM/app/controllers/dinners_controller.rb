class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
    @recipes = Recipe.search(params[:search])
    @dinner_recipes = DinnerRecipe.all
  end
 
  def create
   dinner = Dinner.new
   dinner.user_id = current_user.id
   dinner.save!
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
