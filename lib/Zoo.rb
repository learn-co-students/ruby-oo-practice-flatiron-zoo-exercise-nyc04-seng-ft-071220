class Zoo

    attr_reader :name, :location

    @@all = []
     
    def initialize(name,location)
        @name=name
        @location=location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals 
        animal_zoo.map{|animal_zoo| animal_zoo.animal}
    end

    def animal_zoo
        Animal_Zoo.all.select{|animal_zoo|animal_zoo.zoo == self}
    end

    def animal_species
        uniq_animal_arr = animals.map{|animal| animal.species ? animal.species : nil}
        uniq_animal_arr.uniq
    end

    def find_by_species(a_species)
        animals.select{|animal| animal.species == a_species}
    end

    def animal_nicknames
        animals.map{|animal| animal.nickname ? animal.nickname : nil}
    end

    def self.find_by_location(zoo_location)
        self.all.select{|zoo| zoo.location == zoo_location}
    end

end
