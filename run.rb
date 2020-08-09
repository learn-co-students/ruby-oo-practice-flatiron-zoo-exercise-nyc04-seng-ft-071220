require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
san_diego_zoo= Zoo.new("San Diego Zoo", "San Diego")
new_york_zoo=Zoo.new("New York Zoo", "New York")
bronx_zoo= Zoo.new("Bronx Zoo", "Bronx")

zebra=Animal.new("zebra", 115, "zebbie" )
lion=Animal.new("lion", 300, "simba" )
bear=Animal.new("Bear", 600, "Yogi")
panda= Animal.new("Panda", 800, "Ariel")


# zebra.zoo= san_diego_zoo
# lion.zoo= new_york_zoo
# bear.zoo= bronx_zoo
# san_diego_zoo.add_new_animal("lion", 700, "Mufasa")
san_diego_zoo.add_animal(zebra)
new_york_zoo.add_animal(lion)
bronx_zoo.add_animal(bear)
new_york_zoo.add_animal(panda)
new_york_zoo.animals
# Zoo.find_by_location("New York")
# lion.zoo_method
Animal.find_by_species("Panda")


# san_diego_zoo.animals 
binding.pry
puts "done"
