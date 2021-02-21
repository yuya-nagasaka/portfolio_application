# frozen_string_literal: true

class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity, null: false, default: 0
      t.float  :carbohydrate, null: false, default: 0
      t.float  :protein, null: false, default: 0
      t.float  :fat, null: false, default: 0
      t.float  :vitaminA, null: false, default: 0
      t.float  :vitaminB1, null: false, default: 0
      t.float  :vitaminB2, null: false, default: 0
      t.float  :vitaminB3, null: false, default: 0
      t.float  :vitaminB5, null: false, default: 0
      t.float  :vitaminB6, null: false, default: 0
      t.float  :vitaminB12, null: false, default: 0
      t.float  :vitaminC, null: false, default: 0
      t.float  :vitaminD, null: false, default: 0
      t.float  :vitaminE, null: false, default: 0
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
