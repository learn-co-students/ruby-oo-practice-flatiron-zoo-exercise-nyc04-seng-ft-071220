require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

central_park = Zoo.new("Central Park", "Manhattan")
lincoln_park = Zoo.new("Lincoln Park", "Queens")

cat = Animal.new("cat", "52", "Tommy")
cat.zoo = central_park

dog = Animal.new("cat", "70", "Ruby")
dog.zoo = central_park

find = Animal.find_by_species("cat")
species = central_park.animal_species
binding.pry
puts "done"
