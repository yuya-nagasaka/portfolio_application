# frozen_string_literal: true

class CreateDraftIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :draft_ingredients do |t|
      t.integer 'ingredient_id'
      t.integer 'user_id'
      t.integer 'quantity'
      t.datetime 'created_at'
      t.datetime 'updated_at'
    end
  end
end
