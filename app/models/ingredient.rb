class Ingredient < ApplicationRecord
  has_many :ingredient_national_dishes
  has_many :national_dishes, through: :ingredient_national_dishes
end
