class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :link
      t.references :national_dish, foreign_key: true

      t.timestamps
    end
  end
end
