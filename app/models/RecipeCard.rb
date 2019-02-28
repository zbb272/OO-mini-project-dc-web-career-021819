class RecipeCard
  attr_accessor :date, :rating, :user, :recipe

  @@all = []

  def initialize(date, rating, user, recipe)
    @date, @rating, @user, @recipe = date, rating, user, recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
