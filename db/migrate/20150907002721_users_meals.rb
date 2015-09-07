class UsersMeals < ActiveRecord::Migration
  def change
  	create_table :users_meals do |t|
      t.references :user, :meal
      t.integer :rating
      t.text :review

      t.timestamps null: false
    end
  end
end
