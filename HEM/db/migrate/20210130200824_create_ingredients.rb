class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.float  :carbohydrate
      t.float  :protein
      t.float  :fat
      t.float  :vitaminA
      t.float  :vitaminB1
      t.float  :vitaminB2
      t.float  :vitaminB3
      t.float  :vitaminB5
      t.float  :vitaminB6
      t.float  :vitaminB12
      t.float  :vitaminC
      t.float  :vitaminD
      t.float  :vitaminE
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
