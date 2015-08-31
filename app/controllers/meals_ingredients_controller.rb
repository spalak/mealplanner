class MealsIngredientsController < ApplicationController
	def create
		@meal = Meal.find(params[:meal_id])
		@meals_ingredient = @meal.meals_ingredients.create(meals_ingredients_params)
		redirect_to edit_meal_path(@meal)
	end

	def destroy
		@meal = Meal.find(params[:meal_id])
		@meals_ingredient = MealsIngredient.find(params[:id])
		@meals_ingredient.destroy
		redirect_to edit_meal_path(@meal)
	end

private 
	def meals_ingredients_params
		params.require(:meals_ingredient).permit(:quantity, :ingredient_id)
	end

end