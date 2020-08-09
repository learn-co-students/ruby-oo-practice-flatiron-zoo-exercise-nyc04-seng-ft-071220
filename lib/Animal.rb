class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def initialize(species_par, weight_par, nickname_par)
        @species = species_par
        @weight = weight_par
        @nickname = nickname_par
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(animal_species)
        self.all.select do |animal|
            animal.species == animal_species
        end
    end

end

#What to do:
#- `Animal#zoo`
    #return the zoo instance that the instance belongs to.
#- `Animal.find_by_species`
    #take in an animal's species as an argument
    #return an array of all the animals, which are of that species.