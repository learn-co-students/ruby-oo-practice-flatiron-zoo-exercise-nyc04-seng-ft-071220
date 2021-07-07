require 'pry'
require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"


# San Diego Zoo, San Diego
san_diego_zoo = Zoo.new("San Diego Zoo", "San Diego")
# San Francisco Zoo, San Francisco
san_fransisco_zoo = Zoo.new("San Fransisco Zoo", "San Fransisco")
# Naples Zoo, Naples
naples_zoo = Zoo.new("Naples Zoo", "Naples")
# Zoo Atlanta, Atlanta
atlanta_zoo = Zoo.new("Zoo Atlanta", "Atlanta")
# The Maryland Zoo in Baltimore, Baltimore
maryland_zoo = Zoo.new("Maryland Zoo", "Baltimore")
# Turtle Back Zoo, West Orange
turtle_back_zoo = Zoo.new("Turtle Back Zoo", "West Orange")
# Bronx Zoo, New York City (The Bronx)
bronx_zoo = Zoo.new("Bronx Zoo", "New York City")
# Metro Richmond Zoo, Richmond
metro_richmond_zoo = Zoo.new("Metro Richmond Zoo", "Richmond")
# (species_param, weight_param, nickname_param)


grey_wolf_a = Animal.new("Wolf", 50, "Dr.Grey", "Bronx Zoo")
coyote_a = Animal.new("Coyote", 30, "Taco", "San Fransisco Zoo")
black_bear_a = Animal.new("Bear", 200, "The Artist", "Turtle Back Zoo")
zebra_a = Animal.new("Horse", 800, "Yin", "Metro Richmond Zoo")
grey_wolf_b = Animal.new("Wolf", 58, "Seuss", "Maryland Zoo")
coyote_b = Animal.new("Coyote", 37, "Avo", "Naples Zoo")
black_bear_b = Animal.new("Bear", 223, "Espresso", "San Diego Zoo")
zebra_b = Animal.new("Horse", 798, "Yang", "Metro Richmond Zoo")
grey_wolf_c = Animal.new("Wolf", 60, "Smoky", "Bronx Zoo")
coyote_c = Animal.new("Coyote", 39, "Taquito", "Naples Zoo")
black_bear_c = Animal.new("Bear", 248, "Tobacco", "Maryland Zoo")
zebra_c = Animal.new("Horse", 899, "Coconut", "Bronx Zoo")
eagle_a = Animal.new("Bird", 70, "Freedom","Naples Zoo")
hawk_a = Animal.new("Bird", 66, "Quickly", "Bronx Zoo")
rabbit_a = Animal.new("Rabbit", 12, "Shirley", "San Diego Zoo")
rabbit_b = Animal.new("Rabbit", 15, "Kevin Hart", "Zoo Atlanta")
elephant_a = Animal.new("Elephant", 2000, "Windy", "Maryland Zoo")


# grey_wolf_a.zoo = bronx_zoo
# coyote_a.zoo = metro_richmond_zoo
# black_bear_a.zoo = metro_richmond_zoo
# zebra_a.zoo = bronx_zoo
# grey_wolf_b.zoo = turtle_back_zoo
# coyote_b.zoo = turtle_back_zoo
# rabbit_a.zoo = bronx_zoo
# rabbit_b.zoo = turtle_back_zoo
# elephant_a.zoo = metro_richmond_zoo
# hawk_a.zoo = bronx_zoo
# black_bear_b.zoo = turtle_back_zoo
# zebra_c.zoo = metro_richmond_zoo
# black_bear_c.zoo = turtle_back_zoo

# binding.pry
puts "done"
