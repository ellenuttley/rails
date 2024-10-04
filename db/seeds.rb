# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

animals_to_add = [
  { name: "Gray Wolf", dinosaur: false, marine: false, researched: false },
  { name: "Grizzly Bear", dinosaur: false, marine: false, researched: false },
  { name: "Siberian Tiger", dinosaur: false, marine: false, researched: false },
  { name: "Black Bear", dinosaur: false, marine: false, researched: false },
  { name: "Moose", dinosaur: false, marine: false, researched: false },
  { name: "Unicorn", dinosaur: false, marine: false, researched: false },
  { name: "Dromedary Camel", dinosaur: false, marine: false, researched: false },
  { name: "Gemsbok", dinosaur: false, marine: false, researched: false },
  { name: "American Bison", dinosaur: false, marine: false, researched: false },
  { name: "American Bighorn Sheep", dinosaur: false, marine: false, researched: false },
  { name: "Arctic Wolf", dinosaur: false, marine: false, researched: false },
  { name: "Emperor Penguin", dinosaur: false, marine: false, researched: false },
  { name: "Magnet", dinosaur: false, marine: false, researched: false },
  { name: "Polar Bear", dinosaur: false, marine: false, researched: false },
  { name: "Reindeer", dinosaur: false, marine: false, researched: false },
  { name: "Yeti", dinosaur: false, marine: false, researched: false },
  { name: "Coelphysis", dinosaur: true, marine: false, researched: true },
  { name: "Herrerasaurus", dinosaur: true, marine: false, researched: false },
  { name: "Plateosaurus", dinosaur: true, marine: false, researched: true },
  { name: "Allosaurus", dinosaur: true, marine: false, researched: false },
  { name: "Pacific Walrus", dinosaur: false, marine: true, researched: false },
  { name: "Shortfin Mako Shark", dinosaur: false, marine: true, researched: true },
  { name: "Southern Sea Otter", dinosaur: false, marine: true, researched: false },
  { name: "Sperm Whale", dinosaur: false, marine: true, researched: false },
  { name: "Tiger Shark", dinosaur: false, marine: true, researched: false },
  { name: "West Indian Manatee", dinosaur: false, marine: true, researched: false },
  { name: "Green Moray Eel", dinosaur: false, marine: true, researched: false },
  { name: "Green Sea Turtle", dinosaur: false, marine: true, researched: false },
  { name: "Hammerhead Shark", dinosaur: false, marine: true, researched: false },
  { name: "Harbor Porpoise", dinosaur: false, marine: true, researched: false },
  { name: "Humpback Whale", dinosaur: false, marine: true, researched: true },
  { name: "Lion's Mane Jelly", dinosaur: false, marine: true, researched: false },
  { name: "Manta Ray", dinosaur: false, marine: true, researched: false },
  { name: "Mermaid", dinosaur: false, marine: true, researched: false },
  { name: "Narwhal", dinosaur: false, marine: true, researched: true },
  { name: "Orca", dinosaur: false, marine: true, researched: false },
  { name: "Woolly Rhinoceros", dinosaur: true, marine: false, researched: false },
  { name: "Atlantic Swordfish", dinosaur: false, marine: true, researched: false },
  { name: "Beluga", dinosaur: false, marine: true, researched: false },
  { name: "Bluefin Tuna", dinosaur: false, marine: true, researched: false },
  { name: "Bottlenose Dolphin", dinosaur: false, marine: true, researched: false },
  { name: "Elephant Seal", dinosaur: false, marine: true, researched: false },
  { name: "Giant Pacific Octopus", dinosaur: false, marine: true, researched: false },
  { name: "Giant Squid", dinosaur: false, marine: true, researched: false },
  { name: "Great Barracuda", dinosaur: false, marine: true, researched: false },
  { name: "Great White Shark", dinosaur: false, marine: true, researched: true },
  { name: "Lambeosaurus", dinosaur: true, marine: false, researched: false },
  { name: "Spinosaurus", dinosaur: true, marine: false, researched: true },
  { name: "Styracosaurus", dinosaur: true, marine: false, researched: false },
  { name: "Triceratops", dinosaur: true, marine: false, researched: false },
  { name: "Tyrannosaurus Rex", dinosaur: true, marine: false, researched: true },
  { name: "Velociraptor", dinosaur: true, marine: false, researched: true },
  { name: "Giant Ground Sloth", dinosaur: true, marine: false, researched: false },
  { name: "Giant Tortoise", dinosaur: true, marine: false, researched: false },
  { name: "Saber-toothed Cat", dinosaur: true, marine: false, researched: false },
  { name: "Woolly Mammoth", dinosaur: true, marine: false, researched: true },
  { name: "Asian Black Bear", dinosaur: false, marine: false, researched: false },
  { name: "Giant Panda", dinosaur: false, marine: false, researched: true },
  { name: "Ibex", dinosaur: false, marine: false, researched: false },
  { name: "Llama", dinosaur: false, marine: false, researched: false },
  { name: "Markhor", dinosaur: false, marine: false, researched: false },
  { name: "Mountain Lion", dinosaur: false, marine: false, researched: false },
  { name: "Snow Leopard", dinosaur: false, marine: false, researched: true },
  { name: "Asian Elephant", dinosaur: false, marine: false, researched: false },
  { name: "Bengal Tiger", dinosaur: false, marine: false, researched: false },
  { name: "Black Leopard", dinosaur: false, marine: false, researched: false },
  { name: "Apatosaurus", dinosaur: true, marine: false, researched: true },
  { name: "Camptosaurus", dinosaur: true, marine: false, researched: false },
  { name: "Caudipteryx", dinosaur: true, marine: false, researched: false },
  { name: "Kentrosaurus", dinosaur: true, marine: false, researched: true },
  { name: "Plesiosaurus", dinosaur: true, marine: false, researched: true },
  { name: "Stegosaurus", dinosaur: true, marine: false, researched: false },
  { name: "Ankylosaurus", dinosaur: true, marine: false, researched: true },
  { name: "Deinosuchus", dinosaur: true, marine: false, researched: false },
  { name: "Gallimimus", dinosaur: true, marine: false, researched: false },
  { name: "Iguanodon", dinosaur: true, marine: false, researched: false },
  { name: "Saltwater Crocodile", dinosaur: false, marine: false, researched: false },
  { name: "African Buffalo", dinosaur: false, marine: false, researched: false },
  { name: "African Elephant", dinosaur: false, marine: false, researched: false },
  { name: "African Lion", dinosaur: false, marine: false, researched: false },
  { name: "African Warthog", dinosaur: false, marine: false, researched: false },
  { name: "African Wild Dog", dinosaur: false, marine: false, researched: false },
  { name: "Black Rhinoceros", dinosaur: false, marine: false, researched: false },
  { name: "Blackbuck", dinosaur: false, marine: false, researched: true },
  { name: "Cheetah", dinosaur: false, marine: false, researched: false },
  { name: "Common Wildebeest", dinosaur: false, marine: false, researched: false },
  { name: "Giraffe", dinosaur: false, marine: false, researched: false },
  { name: "Greater Flamingo", dinosaur: false, marine: false, researched: false },
  { name: "Hippopotamus", dinosaur: false, marine: false, researched: false },
  { name: "Leopard", dinosaur: false, marine: false, researched: false },
  { name: "Olive Baboon", dinosaur: false, marine: false, researched: false },
  { name: "Ostrich", dinosaur: false, marine: false, researched: false },
  { name: "Plains Zebra", dinosaur: false, marine: false, researched: false },
  { name: "Red Kangaroo", dinosaur: false, marine: false, researched: false },
  { name: "Spotted Hyena", dinosaur: false, marine: false, researched: false },
  { name: "Thomson's Gazelle", dinosaur: false, marine: false, researched: false },
  { name: "Triceratops", dinosaur: true, marine: false, researched: false },
  { name: "Bongo", dinosaur: false, marine: false, researched: false },
  { name: "Chimpanzee", dinosaur: false, marine: false, researched: false },
  { name: "Clouded Leopard", dinosaur: false, marine: false, researched: false },
  { name: "Giant Anteater", dinosaur: false, marine: false, researched: false },
  { name: "Jaguar", dinosaur: false, marine: false, researched: false },
  { name: "Lowland Gorilla", dinosaur: false, marine: false, researched: true },
  { name: "Mandrill", dinosaur: false, marine: false, researched: false },
  { name: "Okapi", dinosaur: false, marine: false, researched: true },
  { name: "White Bengal Tiger", dinosaur: false, marine: false, researched: true },
  { name: "California Sea Lion", dinosaur: false, marine: true, researched: false }
]

animals_to_add.each do |animal_data|
  Animal.create(animal_data) unless Animal.exists?(name: animal_data[:name])

terrains = [
  { name: 'Grass', price: 40 },
  { name: 'Savannah Grass', price: 70 },
  { name: 'Sand', price: 30 },
  { name: 'Dirt', price: 20 },
  { name: 'Rainforest Floor', price: 50 },
  { name: 'Brown Stone', price: 60 },
  { name: 'Grey Stone', price: 60 },
  { name: 'Snow', price: 100 },
  { name: 'Fresh Water', price: 30 },
  { name: 'Salt Water', price: 60 },
  { name: 'Deciduous Floor', price: 80 },
  { name: 'Coniferous Floor', price: 80 }
]

terrains.each { |t| Terrain.find_or_create_by!(name: t[:name], price: t[:price]) }

end

# Create animals with their terrains
# animals_with_terrains = [
#   {
#     name: "Gray Wolf",
#     terrains: [
#       { name: "Grass", percentage: 25 },
#       { name: "Fresh Water", percentage: 5 },
#       { name: "Deciduous Floor", percentage: 20 },
#       { name: "Coniferous Floor", percentage: 50 }
#     ]
#   },
#   {
#     name: "Grizzly Bear",
#     terrains: [
#       { name: "Fresh Water", percentage: 10 },
#       { name: "Deciduous Floor", percentage: 30 },
#       { name: "Coniferous Floor", percentage: 60 }
#     ]
#   },
#   {
#     name: "Siberian Tiger",
#     terrains: [
#       { name: "Grey Stone", percentage: 15 },
#       { name: "Snow", percentage: 40 },
#       { name: "Fresh Water", percentage: 5 },
#       { name: "Coniferous Floor", percentage: 40 }
#     ]
#   },
#   {
#     name: "Black Bear",
#     terrains: [
#       { name: "Grass", percentage: 5 },
#       { name: "Fresh Water", percentage: 5 },
#       { name: "Deciduous Floor", percentage: 60 },
#       { name: "Coniferous Floor", percentage: 30 }
#     ]
#   },
#   {
#     name: "Moose",
#     terrains: [
#       { name: "Grass", percentage: 20 },
#       { name: "Fresh Water", percentage: 10 },
#       { name: "Deciduous Floor", percentage: 50 },
#       { name: "Coniferous Floor", percentage: 20 }
#     ]
#   },
#   {
#     name: "Unicorn",
#     terrains: [
#       { name: "Grass", percentage: 10 },
#       { name: "Fresh Water", percentage: 10 },
#       { name: "Deciduous Floor", percentage: 80 }
#     ]
#   },
#   {
#     name: "Dromedary Camel",
#     terrains: [
#       { name: "Sand", percentage: 88 },
#       { name: "Dirt", percentage: 10 },
#       { name: "Fresh Water", percentage: 2 }
#     ]
#   },
#   {
#     name: "Gemsbok",
#     terrains: [
#       { name: "Savannah Grass", percentage: 15 },
#       { name: "Sand", percentage: 70 },
#       { name: "Dirt", percentage: 10 },
#       { name: "Fresh Water", percentage: 5 }
#     ]
#   },
#   {
#     name: "American Bison",
#     terrains: [
#       { name: "Grass", percentage: 95 },
#       { name: "Fresh Water", percentage: 5 }
#     ]
#   },
#   {
#     name: "American Bighorn Sheep",
#     terrains: [
#       { name: "Grass", percentage: 5 },
#       { name: "Brown Stone", percentage: 70 },
#       { name: "Grey Stone", percentage: 20 },
#       { name: "Fresh Water", percentage: 5 }
#     ]
#   }
# ]

# animals_with_terrains.each do |animal_data|
#   animal = Animal.find_or_create_by!(name: animal_data[:name])
  
#   animal_data[:terrains].each do |terrain_data|
#     terrain = Terrain.find_by!(name: terrain_data[:name])
#     AnimalTerrain.find_or_create_by!(
#       animal: animal,
#       terrain: terrain,
#       percentage: terrain_data[:percentage]
#     )
#   end
# end