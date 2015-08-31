class MealsIngredients < ActiveRecord::Migration
  def change
  	create_table :meals_ingredients do |t|
      t.references :meal, :ingredient
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
