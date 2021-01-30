class CreateLunchRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :lunch_recipes do |t|
      t.integer :recipe_id
      t.integer :lunch_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
