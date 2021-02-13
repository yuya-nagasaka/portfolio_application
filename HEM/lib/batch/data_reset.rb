class Batch::DataReset
    
  def self.breakfast_reset
    BreakfastRecipe.delete_all
    p "朝食を全て削除しました"
  end
  
  def self.lunch_reset
    LunchRecipe.delete_all
    p "昼食を全て削除しました"
  end
  
  def self.dinner_reset
    DinnerRecipe.delete_all
    p "夕食を全て削除しました"
  end
  
end