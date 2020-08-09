require 'pry'
class Zoo

    attr_accessor :name, :location
    @@all=[]

    def initialize(name, location)
        @name=name
        @location=location
        @@all << self
    end

    def self.all
        @@all
    end

    def add_animal(animal)
        animal.zoo =self
    end

    # Additional method: to add animals 
    # def add_new_animal(animal_param,weight_param,nick_name)
    #     new_animal=Animal.new(animal_param,weight_param,nick_name)
    #     add_animal(new_animal)
    # end
   
    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end


    def selected
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end
        
    def animal_species
        selected= selected()

        mapped= selected.map do |animal|
            animal.species 
        end
        mapped.uniq.join(" ")
    end

    def find_by_species(species)
        selected=Animal.all.select do |animal|
            animal.zoo ==self
        end

        selected.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        selected= selected()
        selected.map do |animal|
            animal.nick_name
        end
    end

    def self.find_by_location(location)
        Zoo.all.select do |zoo|
            zoo.location == location
        end

    end
end
