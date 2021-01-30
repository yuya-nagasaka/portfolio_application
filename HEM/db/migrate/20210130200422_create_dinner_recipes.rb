class CreateDinnerRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :dinner_recipes do |t|
      t.integer :recipe_id
      t.integer :dinner_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
