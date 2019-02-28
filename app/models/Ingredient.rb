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
    array = Allergen.all.map {|allergen| allergen.ingredient}
    array.max_by { |i| array.count(i) }
  end
end
