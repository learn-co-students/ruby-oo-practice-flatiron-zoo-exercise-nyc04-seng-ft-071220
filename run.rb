require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
long_feng = Zoo.new("Dai Li Agents", "45-98 Main St, Earth Kingdom")
toph = Zoo.new("Lions-Zoo", "45-98 Main St, Earth Kingdom")
azula = Zoo.new('Fire-Zoo', "7680 Main Rd, Fire Kingdom")
ann = Zoo.new("Air-Zoo", "790- 3rd Ave, Air Kingdom")
katara = Zoo.new("Water-Zoo", '843 Water Pl. Water Kingdom')

appa = Animal.new("bison", 45, "appa") 
momo = Animal.new("bat", 12, 'momo')
tui = Animal.new('moon spirit', 4, 'tui')
druk = Animal.new('dragon', 89, 'druk')
naga = Animal.new("polar bear", 32, 'naga')
la = Animal.new('fish', 3, 'la')
oogi = Animal.new('bison', 89, "oogi")

appa.zoo = ann
momo.zoo = ann
oogi.zoo = ann
druk.zoo = azula
naga.zoo = katara


binding.pry

puts "done"
