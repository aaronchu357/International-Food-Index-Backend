class NationalDish < ApplicationRecord
  belongs_to :location
  has_many :comments
  has_many :users, through: :comments
  has_many :ingredient_national_dishes
  has_many :ingredients, through: :ingredient_national_dishes
end