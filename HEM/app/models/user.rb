class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :recipes
  has_many :draft_ingredients
  has_one :breakfast
  has_one :lunch
  has_one :dinner
  attachment :image
  validates :introduction, length: { maximum: 10 } 
  validates :name, length: { maximum: 10 } 
   validates :name, presence: true
end
