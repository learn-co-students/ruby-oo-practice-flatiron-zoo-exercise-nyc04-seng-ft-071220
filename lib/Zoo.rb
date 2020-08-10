# [] Keep in mind that in order to properly build out the relationships 
#       between an `Animal` and a `Zoo` class, 
#       an instance of one needs to know about the instance of the other. 
#       Consider where and how this dependency needs to be implemented.

# ### Zoo Class

# [] A `zoo` should be initialized with a 
        # • name        -- should be passed as a string. 
        # • location    -- should be passed as a string.

# [] `Zoo#location` should return the location of the zoo instance.
                    # instance VARIABLE/ATTRIBUTE

# [] `Zoo#name` should return the name of the zoo instance.
                    # instance VARIABLE/ATTRIBUTE

# [] `Zoo.all` should return an array of all the zoo instances.
                    # instance METHOD

# [] `Zoo#animals` should return all the animals that a specific instance of a zoo has.
                    # instance VARIABLE/ATTRIBUTE

# [] `Zoo#animal_species` should return an array of all the species (as strings) of the animals in the zoo. 
#    However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array). 
                    # instance METHOD
                    # .uniq method????

# [] `Zoo#find_by_species` should take in an animal's species as an argument and return an 
#    array of all the animals in that zoo, which are of that species.
                    # instance METHOD

# [] `Zoo#animal_nicknames` should return an array of all the nicknames of animals that a specific instance of a zoo has.
                    # instance METHOD

# [] `Zoo.find_by_location` should take in a location as an argument and return an array of all the zoos within that location.
                    # instance METHOD

# There are no `rspec` files, so it's up to you to test your code within the `run.rb` file.

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
        # binding.pry
        animal.zoo = self
    end
    def all_animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end
    def animal_species
        mapped_arr=self.all_animals.map do |animal|
            animal.species
        end
        mapped_arr.uniq
        # self.all_animals.map {|animal| animal.species}.uniq 
        # (in-line block)
        # self.all_animals.map(&:species).uniq
    end
    def find_by_species(species)
        self.all_animals.select do |animal|
            animal.species == species
        end
    end
    def animal_nicknames
        self.all_animals.map do |animal|
            animal.nickname
        end
        # self.all_animals.map {|animal| animal.nickname}
        # self.all_animals.map (&:nickname)
    end
    def self.find_by_location(location)
        self.all_animals.select do |animal|
            animal.zoo.location == location
        end
        # self.all_animals.select {|animal| animal.zoo.location == location}
    end
end
