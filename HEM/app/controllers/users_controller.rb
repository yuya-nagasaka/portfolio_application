# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]
  before_action :correct_user, only:[:edit, :update]

  def show
    @recipes = @user.recipes
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end
  
  def correct_user
    redirect_to user_path(current_user) unless @user.id == current_user.id
  end
  
end
