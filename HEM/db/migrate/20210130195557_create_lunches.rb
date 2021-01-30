class CreateLunches < ActiveRecord::Migration[5.2]
  def change
    create_table :lunches do |t|
      t.integer  :user_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
