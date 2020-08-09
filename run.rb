require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#Zoo instances(name_par, location_par)
zoo1 = Zoo.new("Central Park Zoo", "Manhattan")
zoo2 = Zoo.new("Bronx Zoo", "Bronx")
zoo3 = Zoo.new("Bryant Park Zoo", "Manhattan")
zoo4 = Zoo.new("Lincoln Park Zoo", "Chicago")

#Animals instances(species_par, weight_par, nickname_par)
guinea_pig1 = Animal.new("Guinea Pig", 3, "Snuggles")
guinea_pig2 = Animal.new("Guinea Pig", 2.5, "Henry")
rabbit1 = Animal.new("Rabbit", 4, "Carrots")
rabbit2 = Animal.new("Rabbit", 5, "Velvet")
rabbit3 = Animal.new("Rabbit", 4, "Bunnincula")
dog1 = Animal.new("Dog", 12, "Phoenix")
dog2 = Animal.new("Dog", 14, "Muppet")
dog3 = Animal.new("Dog", 11, "Daisy")
dog4 = Animal.new("Dog", 18, "Boo")
dog5 = Animal.new("Dog", 15, "Shinu")
dog6 = Animal.new("Dog", 12, "Bolt")
lion1 = Animal.new("Lion", 30, "Mufasa")
lion2 = Animal.new("Lion", 29, "Simba")
dinosaur1 = Animal.new("Dinosaur", 1026, "Spot")
dinosaur2 = Animal.new("Dinosaur", 4050, "Papa")
dinosaur3 = Animal.new("Dinosaur", 3482, "Mama")
zebra1 = Animal.new("Zebra", 180, "Stripes")

#Central Park Zoo
zoo1.add_animal(guinea_pig1)
zoo1.add_animal(rabbit1)
zoo1.add_animal(rabbit2)
zoo1.add_animal(zebra1)

#Bronx Zoo
zoo2.add_animal(guinea_pig2)
zoo2.add_animal(lion1)
zoo2.add_animal(lion2)

#Bryant Park Zoo
zoo3.add_animal(rabbit3)
zoo3.add_animal(dog1)
zoo3.add_animal(dog2)
zoo3.add_animal(dog3)
zoo3.add_animal(dog4)

#Lincoln Park Zoo
zoo4.add_animal(dog5)
zoo4.add_animal(dog6)
zoo4.add_animal(dinosaur1)
zoo4.add_animal(dinosaur2)
zoo4.add_animal(dinosaur3)


binding.pry
0
#puts "done"
