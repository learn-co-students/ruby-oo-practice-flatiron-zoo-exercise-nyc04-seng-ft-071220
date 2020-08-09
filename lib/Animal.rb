require 'pry'
class Animal

    attr_accessor :numerical_weight, :zoo
    attr_reader :nick_name, :species

    @@all=[]

    def initialize(species, numerical_weight, nick_name)
        @species=species
        @numerical_weight=numerical_weight
        @nick_name=nick_name
        @zoo=nil
        @@all << self
    end

    def self.all
        @@all
    end

   
    def zoo_method
        self.zoo
    end

    def Animal.find_by_species(species)
        Animal.all.select do |animal|
            animal.species == species
        end
    end

end
# An animal can belong to a zoo
# The same species of animals, with different nicknames
# can exist for different zoos. 