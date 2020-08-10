require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Animal_Zoo.rb"
require 'pry'


#Test your code here
# ---------------------------------------------
# What are your models?
# zoo model and Animal model
#----------------------------------------------
# What does your domain look like?
# Zoo ---< Animal
# ---------------------------------------------
# What are the relationships between your models?
# One to many, a Zoo has many animals, an animal can only live in one zoo at a time
# ---------------------------------------------
# Which model should know about the other in its initialization?
# Zoo should know about animal, because it is the belong to class


# ---------------------------------------------------------------------------------------
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
san_digo_zoo = Zoo.new("Sa iego Zoo", "San Diego")
san_ = Zoo.new("San Di", "San Diego")
san_do_zoo = Zoo.new("San D Zoo", "San Diego")
# ------------------------------------------------------------------------------------
grey_wolf_a = Animal.new("Wolf", 50, "Dr.Grey")
coyote_a = Animal.new("Coyote", 30, "Taco")
black_bear_a = Animal.new("Bear", 200, "The Artist")
zebra_a = Animal.new("Horse", 800, "Yin")
grey_wolf_b = Animal.new("Wolf", 58, "Seuss")
coyote_b = Animal.new("Coyote", 37, "Avo")
black_bear_b = Animal.new("Bear", 223, "Espresso")
zebra_b = Animal.new("Horse", 798, "Yang")
grey_wolf_c = Animal.new("Wolf", 60, "Smoky")
coyote_c = Animal.new("Coyote", 39, "Taquito")
black_bear_c = Animal.new("Bear", 248, "Tobacco")
zebra_c = Animal.new("Horse", 899, "Coconut")
eagle_a = Animal.new("Bird", 70, "Freedom")
hawk_a = Animal.new("Bird", 66, "Quickly")
rabbit_a = Animal.new("Rabbit", 12, "Shirley")
rabbit_b = Animal.new("Rabbit", 15, "Kevin Hart")
elephant_a = Animal.new("Elephant", 2000, "Windy")
# ======================================================================================
a = Animal_Zoo.new(turtle_back_zoo,elephant_a)
b = Animal_Zoo.new(atlanta_zoo,rabbit_b)
c = Animal_Zoo.new(turtle_back_zoo,grey_wolf_c )
d = Animal_Zoo.new(atlanta_zoo,eagle_a)
e = Animal_Zoo.new(turtle_back_zoo,black_bear_c)
f = Animal_Zoo.new(naples_zoo,zebra_b)
g = Animal_Zoo.new(naples_zoo,grey_wolf_b)
h = Animal_Zoo.new(turtle_back_zoo,black_bear_a)
i = Animal_Zoo.new(metro_richmond_zoo,coyote_b)
# ========================================================================================

binding.pry
puts "done"
