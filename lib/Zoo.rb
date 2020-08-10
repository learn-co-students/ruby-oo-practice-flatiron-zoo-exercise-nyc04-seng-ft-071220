require 'pry'

class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def add_animal(animal)
        animal.zoo = self
    end

    def all_animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        mapped_arr = self.all_animals.map do |animal| #returns an array of all the species (as strings) of the animals in the zoo,
            animal.species
        end
        mapped_arr.uniq                               #returns just a unique array
        #self.all_animals.map { |animal| animal.species }.uniq
        #self.all_animals.map(&:species).uniq
    end

    def find_by_species(species)             #returns an array of all the animals in that zoo, which are of that species
        self.all_animals.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames                  #returns an array of all the nicknames of animals that a specific instance of a zoo has
        self.all_animals.map do |animal|
            animal.nickname
        end
        # self.all_animals.map { |animal| animal.nickname }
        # self.all_animals.map (&:nickname)
    end

    def find_by_location(location)          #returns an array of all the zoos within that location
        self.all_animals.select do |animal|
            animal.zoo.location == location
        end
        # self.all_animals.select { |animal| animal.zoo.location == location }
    end

end
