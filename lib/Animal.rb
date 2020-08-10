require 'pry'

class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    @@all = []

    def initialize(sself.allpecies, weight, nick_name)
        @species = species
        @weight = weight
        @nickname = nick_name
        @zoo = nil
        @@all << self
    end

    # def inspect
    #     "#{self.class}: @species = #{species}"
    # end

    def self.all
        @@all
    end

    def self.find_by_species(species) #returns an array of all the animals, which are of that species
        self.all.select do |animal|
            # binding.pry
            animal.species == species
        end
    end

end
