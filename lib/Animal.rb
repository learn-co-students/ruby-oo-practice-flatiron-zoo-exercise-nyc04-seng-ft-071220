class Animal

attr_accessor :weight, :zoo
attr_reader :species, :nick_name

@@all = []

def initialize (species, weight, nick_name)
  @species = species
  @weight = weight
  @nick_name = nick_name
  @zoo = nil
  @all << self
end

def self.all
  @@all
end
