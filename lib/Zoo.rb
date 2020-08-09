class Zoo

    attr_accessor :location

    @@all = []

    def initialize(name_par, location_par)
        @name = name_par
        @location = location_par
        @@all << self
    end

    def self.all
        @@all
    end

    def add_animal(animal_instance)
        animal_instance.zoo = self
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def species
        self.animals.map do |animal|
            animal.species
        end
    end

    def animal_species
        self.species.uniq
    end

    def find_by_species(animal_species)
        self.animals.select do |animal|
            animal.species == animal_species
        end
    end

    def animal_nicknames
        self.animals.map do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(location_arg)
        self.all.select do |zoo|
            zoo.location == location_arg
        end
    end

end

#What to do:
#`Zoo#animals`
    #return all the animals that a specific instance of a zoo has.
# `Zoo#animal_species`
    #return an array of all the species (as strings) of the animals in the zoo. 
    #If you have two dogs, should only return one "Dog" string (aka an **unique** array).
# `Zoo#find_by_species`
    #take in an animal's species as an argument
    #return an array of all the animals in that zoo, which are of that species.
#`Zoo#animal_nicknames`
    #return an array of all the nicknames of animals that a specific instance of a zoo has.
#`Zoo.find_by_location`
    #take in a location as an argument
    #return an array of all the zoos within that location.