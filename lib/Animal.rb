
class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def initialize(species_param, weight_param, nickname_param)
        #string, num, string
        @species = species_param
        @weight = weight_param
        @nickname = nickname_param
        @zoo = nil 
        # could also be initiliazed taking in zoo argument, but I just chose not to.
        # can just assign using animal_instance.zoo = zoo_instance down the line
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.find_by_species(species_arg) #string arg
        Animal.all.select { |animal| animal.species == species_arg.capitalize }
    end

end

