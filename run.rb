require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
bronx_zoo2 = Zoo.new("Bronx Zoo2", "Bronx")
bronx_zoo3 = Zoo.new("Bronx Zoo3", "Bronx")
queens_zoo = Zoo.new("Queens Zoo", "Queens")
queens_zoo2 = Zoo.new("Queens Zoo2", "Queens")
manhattan_zoo = Zoo.new("Manhattan Zoo", "Manhattan")
jersey_zoo = Zoo.new("Jersey Zoo", "Bronx")

grey_wolf_a = Animal.new("Wolf", 50, "Dr.Grey")
coyote_a = Animal.new("Coyote", 30, "Taco")
black_bear_a = Animal.new("Bear", 200, "The Artist")
horse_a = Animal.new("Horse", 800, "Yin")
coyote_b = Animal.new("Coyote", 50, "Coco")
coyote_c = Animal.new("Coyote", 44, "Milk")


grey_wolf_a.zoo = bronx_zoo
coyote_a.zoo = bronx_zoo
coyote_b.zoo = bronx_zoo
coyote_c.zoo = queens_zoo2
black_bear_a.zoo = queens_zoo
horse_a.zoo = manhattan_zoo

bronx_zoo.animals

bronx_zoo.find_by_species("Coyote")
bronx_zoo.animal_nicknames("Taco")

Zoo.find_by_location("Bronx")
Animal.find_by_species("Coyote")





binding.pry
puts "done"
