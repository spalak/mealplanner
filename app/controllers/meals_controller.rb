class MealsController < ApplicationController

	before_action :authenticate_user!

	def index
		@meals = current_user.meals.all
	end

	def new
		@meal = current_user.meals.new
	end

	def edit
		@meal = current_user.meals.find(params[:id])
	end

	def create
		@meal = current_user.meals.create(meal_params)
		redirect_to meals_path(@meal)
	end

	def update
		@meal = current_user.meals.find(params[:id])
		@meal.update(meal_params)
		redirect_to meals_path
	end

	def destroy
		@meal = current_user.meal.find(params[:id])
		@meal.destroy
		redirect_to meals_path
	end


	def show
		@meal = current_user.meals.find(params[:id])
	end

	def menu
		randMealHash = {}
		@meals = current_user.meals.all

		@meals.each do |meal|
			randMealHash[meal] = rand
		end

		@num = params[:menu][:num].to_i


		sortedMealArray = randMealHash.sort_by { |meal, randNum| randNum }
		@weekMenu = []

		numDays = @num

		sortedMealArray.first(numDays).each do |meal, randNum|
			@weekMenu << meal
		end



		@daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

		ingredientsList(@weekMenu)
	end

	def ingredientsList(menu)
		@ingQuantityHash = Hash.new(0)
		menu.each do |meal| #loop through each meal  NOTE - this needs to be the final array, not ALL meals
			meal.meals_ingredients.each do |meals_ingredient| #loop through each ingredient in every meal
				# if @ingQuantityHash.has_key?(meals_ingredient.ingredient_id)
					#below code is problem, because it's calling quantity for all meals_ingredients,
					#but I only want the quantity for the meals_ingredients that matches the relevant ingredient.2
					@ingQuantityHash[meals_ingredient.ingredient_id] += meals_ingredient.quantity # add incremental quantity
				# else
				# 	@ingQuantityHash[meals_ingredient.ingredient_id] = meals_ingredient.quantity #add the ingredient info with the key value being the ingredient name
				# end
			end
		end

	end

	private
		def meal_params
			params.require(:meal).permit(:name, :description, :servings)
		end

		

end