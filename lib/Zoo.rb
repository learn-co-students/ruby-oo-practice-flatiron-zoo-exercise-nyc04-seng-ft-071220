class Zoo

  attr_accessor :name, :loation

  @@all = []

  def initialize (name, location)
     @name = name
     @location = location
     @@all << self
  end

  def self.all
     @@all
  end
  
  def add_animal(animal)
    animal.zoo = self
  end
  
  def animal_species
    selected_array = Animal.all.select do |animal|
      animal.zoo == self
    end
    mapped_array = selected_array.map do |animal|
      animal.species 
    end
    mapped_array.uniq 
  end 
  
end
