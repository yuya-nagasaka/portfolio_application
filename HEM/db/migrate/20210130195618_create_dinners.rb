# frozen_string_literal: true

class CreateDinners < ActiveRecord::Migration[5.2]
  def change
    create_table :dinners do |t|
      t.integer  :user_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
