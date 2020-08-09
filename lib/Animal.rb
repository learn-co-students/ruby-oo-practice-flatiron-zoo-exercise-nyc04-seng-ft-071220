class Animal

    attr_accessor :zoo
    attr_reader :specie, :weight, :nickname

    @@all =[]

    def initialize(specie, weight, nickname)
        @specie = specie
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

   def self.find_by_species(specie)
        Animal.all.select do |animal|
            animal.specie == specie
        end
   end


end
