class CreateDinnerIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :dinner_ingredients do |t|
      t.integer :ingredient_id
      t.integer :dinner_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
