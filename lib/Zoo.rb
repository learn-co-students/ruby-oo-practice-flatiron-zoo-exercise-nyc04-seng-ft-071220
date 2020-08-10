require 'pry'

class Zoo


    @@all=[]

    attr_accessor :name, :location

    def initialize(name_arg, loc_arg)
        @name=name_arg
        @location=loc_arg
        @animals=[]
        @@all << self
    end

    def self.all
        @@all
    end

    def add_animal(animal)
        @animals << animal
    end

    def animals
        @animals
    end

    def animal_species
    annimal_array= Animal.all.select do |animal_info|
        animal_info.zoo==self
     end
     species_array=annimal_array.map do |species_info|
        species_info.species
     end
     species_array.uniq
     # binding.pry
    end

    # def animals
    #     Animal.all.select do |animal_info|
    #       animal_info.zoo==self
    #       #binding.pry
    #     end
    # end


    def find_by_species(species_name)
        Animal.all.select do |animal_info|
    if   animal_info.species==species_name
            animal_info.zoo
    end
           # binding.pry
        end
    end

    def animal_nicknames
       Animal.all.select do |animal_info|
        if animal_info.zoo==self
            animal_info.name
        end
       
      #  binding.pry
    end
    end

    def self.find_by_location(location)
        self.all.select do |zoo_index|
            zoo_index.location==location
            puts self
           binding.pry
        end
    end



     


end
