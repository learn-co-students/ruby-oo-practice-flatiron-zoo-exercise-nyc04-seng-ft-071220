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

    # def add_animal(animal)
    #     animal.zoo = self 
    # end 

    def animals
        # binding.pry 
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end 

    def animal_species
        species =  animals.map(&:species)
        species.uniq
    end 

    def find_by_species(species)
        Animal.all.select do |animal|
            animal.species == species
        end 
    end

    def animal_nicknames
        # binding.pry
        animals.map(&:nickname)
    end 

    def self.find_by_location(location_arg)
       zoos = Zoo.all.select do |zoo|
            zoo.location == location_arg
        end
        zoos.map(&:name)
    end 

end
