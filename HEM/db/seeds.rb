# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('db/ingredient.csv', headers: true) do |row|
  Ingredient.create(
    name: row['name'], protein: row['protein'], fat: row['fat'],
    carbohydrate: row['carbohydrate'], vitaminA: row['vitaminA'],
    vitaminB1: row['vitaminB1'], vitaminB2: row['vitaminB2'],
    vitaminB3: row['vitaminB3'], vitaminB5: row['vitaminB5'],
    vitaminB6: row['vitaminB6'], vitaminB12: row['vitaminB12'],
    vitaminC: row['vitaminC'], vitaminD: row['vitaminD']
  )
end
