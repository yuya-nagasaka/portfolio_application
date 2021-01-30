class CreateBreakfastIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :breakfast_ingredients do |t|
      t.integer :ingredient_id
      t.integer :breakfast_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
