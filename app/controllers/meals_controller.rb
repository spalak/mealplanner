class MealsController < ApplicationController
	def index
		@meals = Meal.all
	end

	def new
		@meal = Meal.new
	end

	def edit
		@meal = Meal.find(params[:id])
	end

	def create
		@meal = Meal.create(meal_params)
		redirect_to meals_path(@meal)
	end

	def update
		@meal = Meal.find(params[:id])
		@meal.update(meal_params)
		redirect_to meals_path
	end

	def destroy
		@meal = Meal.find(params[:id])
		@meal.destroy
		redirect_to meals_path
	end


	def show
	end

	private
		def meal_params
			params.require(:meal).permit(:name, :description, :servings)
		end

		

end