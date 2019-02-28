class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    ingredients = Allergen.all.map do | allergen |
      allergen.ingredient
    end
    
    ingredients.max_by do | ingredient |
      ingredients.count(ingredient)
    end
  end
end
