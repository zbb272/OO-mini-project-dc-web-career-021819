class Allergen
  attr_accessor :ingredient, :user

  @@all = []

  def initialize (ingredient, user)
    @ingredient, @user = ingredient, user
    @@all << self
  end

  def self.all
    @@all 
  end
end
