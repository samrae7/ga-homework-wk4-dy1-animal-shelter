class Client

  # - name
  # - age
  # - gender
  # - number of pets

  attr_accessor :name, :age, :gender, :number_of_pets

  def initialize (name, age, gender, number_of_pets)
    @name = name
    @age = age
    @gender = gender
    @number_of_pets = number_of_pets
  end

end
