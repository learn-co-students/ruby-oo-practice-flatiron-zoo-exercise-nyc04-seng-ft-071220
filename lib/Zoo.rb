
class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name_param, location_param) 
        #both take string as args
        @name = name_param
        @location = location_param
        @@all << self
    end

    def self.all 
        @@all 
    end

    def animals 
        animal_instances = Animal.all.select { |animal| animal.zoo == self }
    end

    def animal_species
        animals_array = self.animals.map { |animal| animal.species }
        animals_array.uniq
        # binding.pry
    end

    def find_by_species(species)
        self.animals.select { |animal| animal.species == species.capitalize }
    end

    def animal_nicknames
        self.animals.map { |animal| animal.nickname }
    end

    def self.find_by_location(location_arg)
        Zoo.all.select { |zoo| zoo.location == location_arg}
    end

end

