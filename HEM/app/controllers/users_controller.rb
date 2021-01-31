class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @recipes = @user.recipes
  end

  def edit
  end

  def update
  end
end
