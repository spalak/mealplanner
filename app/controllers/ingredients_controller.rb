class IngredientsController < ApplicationController
	def index
		@ingredients = Ingredient.all
	end

	def new
		@ingredients = Ingredient.new
	end

	def edit
		@ingredients = Ingredient.find(params[:id])
	end

	def create
		@ingredients = Ingredient.create(ingredient_params)
		redirect_to ingredients_path
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		@ingredient.update(ingredient_params)
		redirect_to ingredients_path

	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy
		redirect_to ingredients_path
	end

	def add_meal_ingredients
		@meal = Meal.find(params[:id])
		@ingredient = @meal.ingredients(ingredient_params)
	end


	private

	def ingredient_params
		params.require(:ingredient).permit(:name)
	end
end