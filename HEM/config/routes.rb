# frozen_string_literal: true

Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :users, only: %i[show edit update]
  resources :recipes
  resources :draft_ingredients,only:[:create,:update,:destroy]
  resources :ingredients, only: [:update]
  resources :recipe_ingredients,only:[:update,:destroy]
  resources :breakfasts,only: [:new]
  resources :breakfast_recipes,only: [:create,:destroy]
  resources :lunches,only: [:new]
  resources :lunch_recipes,only: [:create,:destroy]
  resources :dinners,only: [:new]
  resources :dinner_recipes,only: [:create,:destroy]
end
