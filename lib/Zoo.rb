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
        Animal.all.select { |animal| animal.zoo == self}
    end

    def zoo_species
        animals.map { |animal| animal.species}.uniq
    end

    def find_by_species(species)
        zoo_species.select { |animal| animal.species == species }
    end

    def animal_nicknames
        self.animals.map(&:nickname)
    end

    def find_by_location(location)
        self.animals.map {|animal| animal.location == location}
    end

end
