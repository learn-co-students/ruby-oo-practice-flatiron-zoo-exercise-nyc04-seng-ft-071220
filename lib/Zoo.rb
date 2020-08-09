class Zoo

    attr_accessor :name, :location

    @@all = []
    
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        animals = self.animals.collect {|animal| animal.species}
        animals.uniq
    end

    def find_by_species(animal_species)
        self.animals.collect {|animal| animal.speices == animal_species}
    end

    def animal_nicknames
        animals = self.animals.collect {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select {|zoo| zoo.location == location}
    end

    def self.all
        @@all
    end
end
