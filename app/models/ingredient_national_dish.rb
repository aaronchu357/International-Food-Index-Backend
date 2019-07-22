class IngredientNationalDish < ApplicationRecord
  belongs_to :ingredient
  belongs_to :national_dish
end
