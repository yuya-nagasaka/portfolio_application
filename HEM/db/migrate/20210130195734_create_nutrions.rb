class CreateNutrions < ActiveRecord::Migration[5.2]
  def change
    create_table :nutrions do |t|
      t.integer  :carbohydrate
      t.integer  :protein
      t.integer  :fat
      t.integer  :vitaminA
      t.integer  :vitaminB
      t.integer  :vitaminB2
      t.integer  :vitaminB3
      t.integer  :vitaminB5
      t.integer  :vitaminB6
      t.integer  :vitaminB12
      t.integer  :vitaminC
      t.integer  :vitaminD
      t.integer  :vitaminE
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
