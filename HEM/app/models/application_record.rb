class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  def Recipe.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"]) 
    else
      all
    end
  end
  
  def Ingredient.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"]) 
      # where(['ingredient(カラム) LIKE ?', "%#{search(検索文字)}%"]) 
    else
      none
    end
  end
  
end
