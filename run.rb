require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


zoo1=Zoo.new("Bronx Zoo", "The Bronx")
zoo2=Zoo.new("Central Park Zoo", "Manhatten")

animal1=Animal.new("Tiger", 80, "Tony", zoo1)
animal2=Animal.new("Cheetah", 65, "Chester", zoo2)
animal3=Animal.new("Monkey", 14, "Banana", zoo2)
animal4= Animal.new("penguin", 15, "scamper", zoo2)
#animal2.zoo
var1=Animal.find_by_species("Monkey")
puts var1

animal2.zoo
animal1.zoo

zoo1.animals
zoo1.animals

zoo2.animal_species


zoo2.find_by_species("tiger")

zoo2.animal_nicknames
zoo1.find_by_species("monkey")
var4=Zoo.find_by_location("The Bronx")
var4

binding.pry
0