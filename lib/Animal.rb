# [] Keep in mind that in order to properly build out the relationships 
#       between an `Animal` and a `Zoo` class, 
#       an instance of one needs to know about the instance of the other. 
#       Consider where and how this dependency needs to be implemented.

### Animal Class

# [] An `animal` should be instantiated with the: 
        # • species 
        # • numerical weight 
        # • a nickname 
        # • zoo should be added? (see LINE 30)

# [] Keep in mind that the animal's 
        # • species    -- should NOT change 
        # • nickname   -- should NOT change
        # • weight     -- CAN change

# [] `Animal#nickname` should return the nickname of the animal.
                    # instance VARIABLE/ATTRIBUTE

# [] `Animal#weight` should return the weight of the animal.
                    # instance VARIABLE/ATTRIBUTE

# [] `Animal#species` should return the species of the animal.
                    # instance VARIABLE/ATTRIBUTE

# [] `Animal.all` should return an array of all the animal instances. 
                    # instance METHOD

# [] `Animal#zoo` should return the zoo instance that the instance belongs to.
                    # instance VARIABLE/ATTRIBUTE (zoo needs to be added as attribute????)

# [] `Animal.find_by_species` should take in an animal's species as an argument 
#           AND return an array of all the animals, which are of that species.
                    # instance METHOD

# There are no `rspec` files, so it's up to you to test your code within the `run.rb` file.

class Animal

    attr_accessor :weight, :zoo
    attr_reader :species, :nickname
    @@all=[]
    def initialize(species, weight, nick_name)
        @species=species
        @weight=weight
        @nickname=nick_name
        @zoo=nil
        @@all << self
    end
    # def to_s
    #     "meow"
    # end
    # def inspect
    #     "#{self.class}: @species=#{species}"
    # end 
    def self.all
        @@all
    end
    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species 
        end
    end
end
