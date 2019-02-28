class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do | recipe_card |
      recipe_card.user == self
    end
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def allergens
    Allergen.all.select do | allergen |
      allergen.user == self
    end.map do | allergen |
      allergen.ingredient
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def top_three_recipes
    RecipeCard.all.select do | recipe_card |
      recipe_card.user == self
    end.sort_by do | recipe_card |
      recipe_card.rating
    end.reverse[0..2]
  end

  def most_recent_recipe
    RecipeCard.all.max_by do | recipe_card |
      recipe_card.date
    end.recipe
  end

end
