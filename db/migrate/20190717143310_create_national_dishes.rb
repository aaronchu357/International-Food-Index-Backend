class CreateNationalDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :national_dishes do |t|
      t.string :name
      t.text :description
      t.string :image
      t.references :location, foreign_key: true
    end
  end
end
