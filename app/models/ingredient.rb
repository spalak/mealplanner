class Ingredient < ActiveRecord::Base
	has_many :meals_ingredients
	has_many :meals, :through => :meals_ingredients
end
