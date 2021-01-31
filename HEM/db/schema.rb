# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_30_200824) do

  create_table "breakfast_ingredients", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "breakfast_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breakfast_recipes", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "breakfast_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breakfasts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dinner_ingredients", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "dinner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dinner_recipes", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "dinner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dinners", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.float "carbohydrate"
    t.float "protein"
    t.float "fat"
    t.float "vitaminA"
    t.float "vitaminB1"
    t.float "vitaminB2"
    t.float "vitaminB3"
    t.float "vitaminB5"
    t.float "vitaminB6"
    t.float "vitaminB12"
    t.float "vitaminC"
    t.float "vitaminD"
    t.float "vitaminE"
    t.float "created_at"
    t.float "updated_at"
  end

  create_table "lunch_ingredients", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "lunch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lunch_recipes", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "lunch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lunches", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "introduction"
    t.string "image_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
