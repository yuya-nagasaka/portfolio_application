class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
