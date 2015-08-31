class Animal
# - names
# - breed
# - age
# - gender
# - favourite toys.

  attr_accessor :name, :species, :age, :gender, :favourite_toy

  def initialize(name,species,age,gender,favourite_toy)
    @name = name
    @species = species
    @age = age
    @gender = gender
    @favourite_toy = favourite_toy
  end

end
