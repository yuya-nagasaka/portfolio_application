# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def Recipe.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      none
    end
  end

  def Ingredient.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      none
    end
  end
end
