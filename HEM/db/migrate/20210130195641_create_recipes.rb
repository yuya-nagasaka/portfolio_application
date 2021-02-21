# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer  :user_id
      t.string :name
      t.text :method
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
