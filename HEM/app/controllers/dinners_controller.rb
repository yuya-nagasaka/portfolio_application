# frozen_string_literal: true

class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
    @all_recipes = Recipe.all
    @search_recipes = Recipe.search(params[:search])
    @search_recipes = @search_recipes.page(params[:page]).per(5)
  end
end
