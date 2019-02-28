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
    RecipeCard.all.map {|rcard| rcard.recipe}.max
  end

  def recipe_count
    RecipeCard.all.select do | recipe_card |
      recipe_card.recipe == self
    end.length
  end

  def users
    # should return the user instances who have recipe cards with this recipe
    RecipeCard.all.select {|rcard| rcard.recipe == self}.map {|rcard| rcard.user}.uniq
  end

  def ingredients
    # should return all of the ingredients in this recipe
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def allergens
    #should return all of the ingredients in this recipe that are allergens
    Allergen.all.select do | allergen |
      ingredients.include?(allergen.ingredient)
    end.map do |allergen|
      allergen.ingredient
    end.uniq
  end

  def add_ingredients(ingredient_array)
    #should take an array of ingredient instances as an argument, and associate
    #each of those ingredients with this recipe
    ingredient_array.each do | new_ingredient |
      RecipeIngredient.new(self, new_ingredient)
    end
  end

end
