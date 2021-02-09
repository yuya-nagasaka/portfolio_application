Rails.application.routes.draw do
  get 'new/create'
  get 'new/show'
  get 'new/edit'
  get 'new/update'
  get 'new/delete'
  devise_for :users
  root 'homes#top'
  resources :users, only: [:show, :edit, :update]
  resources :recipes
  resources :ingredients
  resources :draft_ingredients
  resources :ingredients, only: [:update]
  resources :recipe_ingredients
  resources :breakfasts
  resources :breakfast_recipes
  resources :lunches
  resources :lunch_recipes
  resources :dinners
  resources :dinner_recipes
end