class MealsIngredient < ActiveRecord::Base
	belongs_to :meal
	belongs_to :ingredient

	validates_uniqueness_of :ingredient_id, scope: :meal_id
end
