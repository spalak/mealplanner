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



