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
		@meal = Meal.find(params[:id])
	end

	def menu
		randMealArray = {}
		@meals = Meal.all

		@meals.each do |meal|
			randMealArray[meal] = rand
		end

		sortedMealArray = randMealArray.sort_by { |meal, randNum| randNum }
		@weekMenu = []

		sortedMealArray.each do |meal, randNum|
			@weekMenu << meal
		end

		@daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
	end

	private
		def meal_params
			params.require(:meal).permit(:name, :description, :servings)
		end

		

end