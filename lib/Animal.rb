class Animal

    attr_accessor :weight, :zoo
    attr_reader :nickname, :species

    @@all = []

    def initialize(species,weight,nickname)
        @species=species
        @nickname=nickname
        @weight=weight
        @@all <<self
    end

    def self.all
        @@all
    end

    def zoo
        animal_zoo.map{|animal_zoo| animal_zoo.zoo}
    end

    def animal_zoo
        Animal_Zoo.all.select{|animal_zoo|animal_zoo.animal == self}
    end

    def self.find_by_species(find_species)
        self.all.select{|animal| animal.species == find_species}
    end
end

