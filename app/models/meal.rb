class Meal <ActiveRecord::Base
	has_many :meals_ingredients
	has_many :ingredients, :through => :meals_ingredients

	has_many :users_meals
	has_many :users, :through => :users_meals
end
