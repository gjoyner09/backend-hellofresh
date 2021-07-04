# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Menu.count == 0 
    Menu.create(week: Date.new(2021,7,5))
    Menu.create(week: Date.new(2021,7,12))
end

if Recipe.count == 0
    Recipe.create(title: "Chicken Alfredo", ingredients: "Chicken, Fettucini, Sauce, Mushrooms", instructions: "Boil water, add pasta for 10 minutes, cook chicken and mushrooms, mix all ingredients together", nutritional_info: "800 calories", classification: "easy")
    Recipe.create(title: "Beef stir fry", ingredients: "Beef, broccoli, rice, sauce", instructions: "Cook rice, cook beef and broccoli together, mix all ingredients together", nutritional_info: "700 calories", classification: "medium")
end

if RecipeWeekJoinTable.count == 0
    RecipeWeekJoinTable.create(menu_id: 1, recipe_id: 2)
    RecipeWeekJoinTable.create(menu_id: 2, recipe_id: 1)
end