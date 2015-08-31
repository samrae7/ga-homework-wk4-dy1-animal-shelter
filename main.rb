require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

shelter = Shelter.new('Sam\'s Animal Sanctuary')

def list_clients(shelter)
  shelter.clients.each_with_index{ |client, index| puts "Ref: #{index} / Name: #{client.name} / Age: #{client.age} / Gender:#{client.gender} / No. of pets: #{client.number_of_pets}"}
end

def list_animals(shelter)
  shelter.animals.each_with_index{ |animal, index| puts "Ref: #{index} / Name: #{animal.name} / Species: #{animal.species} / Age: #{animal.age} / Gender: #{animal.gender} / Favourite toy: #{animal.favourite_toy}" }
end


def menu
  puts `clear`
  puts '*' * 52
  print "Welcome to Sam\'s Animal Sanctuary".center 50
  puts "\n"
  puts "*" *52
  puts '1: Add a new client'
  puts '2: List current clients'
  puts '3: Put a new animal up for adoption'
  puts '4: List animals available for adoption'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu

while response.downcase != 'q'
  case response
  when '1' # Add a client
    puts 'Enter client name: '
    client_name = gets.chomp

    puts 'Enter client age: '
    client_age = gets.to_i

    puts 'Enter client gender (m/f): '
    client_gender = gets.chomp

    puts 'Enter client\'s number of pets: '
    client_no_of_pets = gets.to_i

    shelter.add_client(client_name,client_age,client_gender,client_no_of_pets)
   
  when '2' # List clients
    puts 'Current clients are as follows: '
    list_clients(shelter)
    gets

  when '3' # Add a new animal to the adoption list

    puts 'What is your pet\'s name?'
    animal_name = gets.chomp

    puts "What species is #{animal_name}?"
    animal_species = gets.chomp

    puts "How old is #{animal_name}?"
    animal_age = gets.chomp

    puts "What gender is #{animal_name}?"
    animal_gender= gets.chomp

    puts "What is #{animal_name}\'s favourite toy?"
    animal_favourite_toy = gets.chomp

    shelter.add_animal(animal_name, animal_species, animal_age, animal_gender, animal_favourite_toy)
  
  when '4' # List animals in the shelter
    puts 'Current animals available for adoption: '
    list_animals(shelter)
    gets
end

  response = menu

end



