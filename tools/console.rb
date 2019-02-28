require_relative '../config/environment.rb'


cookie_recipe = Recipe.new("Cookies")
cake_recipe = Recipe.new("Cake")

flour = Ingredient.new("Flour")
sugar = Ingredient.new("Sugar")
water = Ingredient.new("Water")
love = Ingredient.new("Love")

zach = User.new("Zach")
sean = User.new("Sean")

zach_cookie_recipe_card = RecipeCard.new("02-27-2019", 9, zach, cookie_recipe)
sean_cookie_recipe_card = RecipeCard.new("02-27-2019", 9, sean, cookie_recipe)

water_allergy = Allergen.new(water, zach)

cookie_recipe_ingredient_flour = RecipeIngredient.new(cookie_recipe, flour)
cookie_recipe_ingredient_sugar = RecipeIngredient.new(cookie_recipe, sugar)
cookie_recipe_ingredient_water = RecipeIngredient.new(cookie_recipe, water)



puts "-----------"
puts "Recipe Test"
puts "-----------"
# Build the following methods on the Recipe class
#
# - `Recipe.all`
# should return all of the recipe instances
puts "Recipe.all: "
puts Recipe.all == [cookie_recipe, cake_recipe]
# - `Recipe.most_popular`
# should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
puts "Recipe.most_popular: "
puts Recipe.most_popular == cookie_recipe
# - `Recipe#users`
# should return the user instances who have recipe cards with this recipe
puts "Recipe#users: "
puts cookie_recipe.users == [zach, sean]
# - `Recipe#ingredients`
# should return all of the ingredients in this recipe
puts "Recipe#ingredients: "
puts cookie_recipe.ingredients == [flour, sugar]
# - `Recipe#allergens`
# should return all of the ingredients in this recipe that are allergens
puts "Recipe#allergens: "
puts cookie_recipe.allergens == [water]
# - `Recipe#add_ingredients`
# should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
puts "Recipe#add: "
# cake_recipe.add_ingredients([sugar, love])
# puts cake_recipe.ingredients == [sugar, love]

puts "-----------"
puts "User Tests"
puts "-----------"
# ### `User`
# Build the following methods on the User class
#
# - `User.all`
# should return all of the user instances
# - `User#recipes`
# should return all of the recipes this user has recipe cards for
# - `User#add_recipe_card`
# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
# - `User#declare_allergen`
# should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
# - `User#allergens`
# should return all of the ingredients this user is allergic to
# - `User#top_three_recipes`
# should return the top three highest rated recipes for this user.
# - `User#most_recent_recipe`
# should return the recipe most recently added to the user's cookbook.


puts "-----------"
puts "RecipeCard Tests"
puts "-----------"
# ### `RecipeCard`
# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:
#
# - `RecipeCard.all`
# should return all of the RecipeCard instances
# - `RecipeCard#date`
# should return the date of the entry
# - `RecipeCard#rating`
# should return the rating (an integer) a user has given their entry
# - `RecipeCard#user`
# should return the user to which the entry belongs
# - `RecipeCard#recipe`
# should return the recipe to which the entry belongs

puts "-----------"
puts "Ingredient Tests"
puts "-----------"
# ### `Ingredient`
# Build the following methods on the Ingredient class
#
# - `Ingredient.all`
# should return all of the ingredient instances
# - `Ingredient.most_common_allergen`
# should return the ingredient instance that the highest number of users are allergic to
#
puts "-----------"
puts "RecipeIngredient Tests"
puts "-----------"
# ### `RecipeIngredient`
# RecipeIngredient is the join between an ingredient and a recipe.  This is a has-many-through relationship
# Build the following methods on the RecipeIngredient class
#
# - `RecipeIngredient.all`
# should return all of the RecipeIngredient instances
puts "RecipeIngredient.all: "
# - `RecipeIngredient#ingredient`
# should return the ingredient instance
# - `RecipeIngredient#recipe`
# should return the recipe instance

puts "-----------"
puts "Allergen Tests"
puts "-----------"
### `Allergen`
# An Allergen is a join between a user and an ingredient.  This is a has-many-through relationship.  What methods should an instance of this model respond to?
#
# - `Allergen.all`
# should return all of the Allergen instances
puts "Allergen.all: "
puts Allergen.all == [water_allergy]


puts "-----------"
puts "Bonus Tests"
puts "-----------"
# ### `**Bonus**`
# - `User#safe_recipes`
# should return all recipes that do not contain ingredients the user is allergic to
# - What other methods might be useful to have?
#


binding.pry
