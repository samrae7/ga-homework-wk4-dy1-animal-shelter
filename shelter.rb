class Shelter

  attr_accessor :name, :clients, :animals

  def initialize name
    @name = name
    @clients =[]
    @animals =[]
  end

  def add_client (name, age, gender, number_of_pets)
    clients << Client.new(name, age, gender, number_of_pets)
  end

  def add_animal (name, species, age, gender, favourite_toy)
    animals << Animal.new(name, species, age, gender, favourite_toy)
  end

end