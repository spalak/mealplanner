class UsersMealsController < ApplicationController
	def create
		@meal = Meal.find(params[:meal_id])
		@user = current_user
		@users_meal = @meal.users_meals.create(:user_id=>@user.id, :meal_id => @meal.id)
		redirect_to meals_path
	end

	# Build a method to remove a meal from a specific user, not overall
	def destroy
		@meal = Meal.find(params[:meal_id])
		@users_meal = UsersMeal.find(params[:id])
		@users_meal.destroy
		redirect_to meals_path
	end

#Build a method to figure out what's getting passed for the user, and how to pass the 
	# def index
	# 	@meal = Meal.find(params[:meal_id])
	# 	@user = current_user
	# 	@users_meal = @meal.users_meals.new(:user_id=>@user.id, :meal_id => @meal.id)
	# end

	private 
	def users_meals_params
		params.require(current_user).permit(:user_id, :meal_id)
	end

end