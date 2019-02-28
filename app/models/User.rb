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

  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select do | allergen |
      allergen.user == self
    end.map do | allergen |
      allergen.ingredient
    end 
  end

  def top_three_recipes

  end

  def most_recent_recipe

  end

end
