require 'pry'

class Animal

    @@all=[]

    attr_reader :species, :name
    attr_accessor :weight_arg, :zoo

    def initialize(species_arg, weight_arg, name_arg, zoo)
        @species=species_arg
        @weight=weight_arg
        @name=name_arg
        @zoo=zoo

        @@all << self
    end

    def self.all
        @@all
    end


    def self.find_by_species(species_param)
        Animal.all.select do |animal_index|
           animal_index.species==species_param
    
            #binding.pry
        end
    end


end
