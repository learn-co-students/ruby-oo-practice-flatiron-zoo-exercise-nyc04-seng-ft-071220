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

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def find_by_species(specie_type)
        self.animals.select do |animal| 
            animal.specie == specie_type
        end
    end

    def animal_nicknames(nick_name)
        self.animals.select do |animal| 
            animal.nickname == nick_name
        end
    end

    def self.find_by_location(location)
        Zoo.all.select do |zoo|
            zoo.location == location
        end
    end

end
