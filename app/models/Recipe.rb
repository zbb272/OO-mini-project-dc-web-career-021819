class Recipe
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    # should return the recipe instance with the highest number of users
    # (the recipe that has the most recipe cards)
    RecipeCard.all.sort do | recipe_card |
      recipe_card.recipe.recipe_count
    end[-1]

  end

  def recipe_count
    RecipeCard.all.select do | recipe_card |
      recipe_card.recipe == self
    end.length
  end

  def users
    # should return the user instances who have recipe cards with this recipe
    RecipeCard.all.select { |card| card.user == self }.map { |user_card| user_card.user }
  end

  def ingredients
    # should return all of the ingredients in this recipe
    RecipeIngredient.all.select {|ri| ri.recipe == self}.map {|ri| ri.ingredient}
  end

  def allergens
    #should return all of the ingredients in this recipe that are allergens

  end

  def add_ingredients
    #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  end

end
