# frozen_string_literal: true

class CreateBreakfastRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :breakfast_recipes do |t|
      t.integer :recipe_id
      t.integer :breakfast_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
