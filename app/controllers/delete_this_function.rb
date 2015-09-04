randMealArray = {}
@meals = Meal.all

@meals.each do |meal|
	randMealArray[meal] = rand
end

sortedMealArray = randMealArray.sort_by { |meal, randNum| randNum }
weekMenu = []

sortedMealArray.each do |meal, randNum|
	weekMenu << meal
end


<%= "Sunday meal: " + @weekMenu[0].name %> <br>
<%= "Monday meal: " + 	@weekMenu[1].name %> <br>
<%= "Tuesday meal: " + @weekMenu[2].name %> <br>
<%= "Wednesday meal: " + @weekMenu[3].name %> <br>
<%= "Thursday meal: " + @weekMenu[4].name %> <br>
<%= "Friday meal: " + @weekMenu[5].name %> <br>
<%= "Saturday meal: " + @weekMenu[6].name %> <br><br>


# create a function that gets the ingredients from each meal, and if it's a new ingredient,
# adds it to a hash as a new key, and then for the value adds the quantity.  If it's an ingredient
# that is already in the hash (using has_key? method), then add to the quantity of that ingredient
ingQuantityHash = {}
@meals.each do |meal| #loop through each meal  NOTE - this needs to be the final array, not ALL meals
	meal.meals_ingredients.each do |meals_ingredient| #loop through each ingredient in every meal
		if ingQuantityHash.has_key?(meals_ingredient.ingredient_id)
			#below code is problem, because it's calling quantity for all meals_ingredients,
			#but I only want the quantity for the meals_ingredients that matches the relevant ingredient.2
			ingQuantityHash[meals_ingredient.ingredient_id] += meals_ingredient.quantity # add incremental quantity
		else
			ingQuantityHash[meals_ingredient.ingredient_id] = meals_ingredient.quantity #add the ingredient info with the key value being the ingredient name
		end
	end
end


