class CreateIngredientNationalDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_national_dishes do |t|
      t.references :ingredient, foreign_key: true
      t.references :national_dish, foreign_key: true

      t.timestamps
    end
  end
end
