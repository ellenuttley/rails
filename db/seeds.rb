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
  { name: "Pacific Walrus", dinosaur: false, marine: false, researched: false },
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
  { name: "Saber Toothed Cat", dinosaur: true, marine: false, researched: false },
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
animals_with_terrains = [
  {
    name: "Gray Wolf",
    terrains: [
      { name: "Grass", percentage: 25 },
      { name: "Fresh Water", percentage: 5 },
      { name: "Deciduous Floor", percentage: 20 },
      { name: "Coniferous Floor", percentage: 50 }
    ]
  },
  {
    name: "Grizzly Bear",
    terrains: [
      { name: "Fresh Water", percentage: 10 },
      { name: "Deciduous Floor", percentage: 30 },
      { name: "Coniferous Floor", percentage: 60 }
    ]
  },
  {
    name: "Siberian Tiger",
    terrains: [
      { name: "Grey Stone", percentage: 15 },
      { name: "Snow", percentage: 40 },
      { name: "Fresh Water", percentage: 5 },
      { name: "Coniferous Floor", percentage: 40 }
    ]
  },
  {
    name: "Black Bear",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Fresh Water", percentage: 5 },
      { name: "Deciduous Floor", percentage: 60 },
      { name: "Coniferous Floor", percentage: 30 }
    ]
  },
  {
    name: "Moose",
    terrains: [
      { name: "Grass", percentage: 20 },
      { name: "Fresh Water", percentage: 10 },
      { name: "Deciduous Floor", percentage: 50 },
      { name: "Coniferous Floor", percentage: 20 }
    ]
  },
  {
    name: "Unicorn",
    terrains: [
      { name: "Grass", percentage: 10 },
      { name: "Fresh Water", percentage: 10 },
      { name: "Deciduous Floor", percentage: 80 }
    ]
  },
  {
    name: "Dromedary Camel",
    terrains: [
      { name: "Sand", percentage: 88 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 2 }
    ]
  },
  {
    name: "Gemsbok",
    terrains: [
      { name: "Savannah Grass", percentage: 15 },
      { name: "Sand", percentage: 70 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "American Bison",
    terrains: [
      { name: "Grass", percentage: 95 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "American Bighorn Sheep",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Brown Stone", percentage: 70 },
      { name: "Grey Stone", percentage: 20 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Bongo",
    terrains: [
      { name: "Grass", percentage: 20 },
      { name: "Dirt", percentage: 10 },
      { name: "Rainforest Floor", percentage: 70 }
    ]
  },
  {
    name: "Chimpanzee",
    terrains: [
      { name: "Grass", percentage: 10 },
      { name: "Dirt", percentage: 5 },
      { name: "Rainforest Floor", percentage: 85 }
    ]
  },
  {
    name: "Clouded Leopard",
    terrains: [
      { name: "Grass", percentage: 20 },
      { name: "Rainforest Floor", percentage: 80 }
    ]
  },
  {
    name: "Giant Anteater",
    terrains: [
      { name: "Grass", percentage: 8 },
      { name: "Dirt", percentage: 10 },
      { name: "Rainforest Floor", percentage: 80 },
      { name: "Fresh Water", percentage: 2 }
    ]
  },
  {
    name: "Jaguar",
    terrains: [
      { name: "Dirt", percentage: 10 },
      { name: "Rainforest Floor", percentage: 75 },
      { name: "Fresh Water", percentage: 15 }
    ]
  },
  {
    name: "Lowland Gorilla",
    terrains: [
      { name: "Grass", percentage: 20 },
      { name: "Dirt", percentage: 10 },
      { name: "Rainforest Floor", percentage: 70 }
    ]
  },
  {
    name: "Mandrill",
    terrains: [
      { name: "Grass", percentage: 10 },
      { name: "Dirt", percentage: 5 },
      { name: "Rainforest Floor", percentage: 85 }
    ]
  },
  {
    name: "Okapi",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Dirt", percentage: 5 },
      { name: "Rainforest Floor", percentage: 88 },
      { name: "Fresh Water", percentage: 2 }
    ]
  },
  {
    name: "White Bengal Tiger",
    terrains: [
      { name: "Grass", percentage: 15 },
      { name: "Dirt", percentage: 5 },
      { name: "Rainforest Floor", percentage: 70 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Lambeosaurus",
    terrains: [
      { name: "Coniferous Floor", percentage: 85 },
      { name: "Grass", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Spinosaurus",
    terrains: [
      { name: "Coniferous Floor", percentage: 65 },
      { name: "Grass", percentage: 25 },
      { name: "Dirt", percentage: 5 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Styracosaurus",
    terrains: [
      { name: "Deciduous Floor", percentage: 70 },
      { name: "Fresh Water", percentage: 10 },
      { name: "Grass", percentage: 5 },
      { name: "Sand", percentage: 5 },
      { name: "Dirt", percentage: 5 }
    ]
  },
  {
    name: "Tyrannosaurus Rex",
    terrains: [
      { name: "Grass", percentage: 60 },
      { name: "Grey Stone", percentage: 25 },
      { name: "Deciduous Floor", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Velociraptor",
    terrains: [
      { name: "Coniferous Floor", percentage: 85 },
      { name: "Grass", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Giant Ground Sloth",
    terrains: [
      { name: "Grass", percentage: 50 },
      { name: "Snow", percentage: 30 },
      { name: "Brown Stone", percentage: 15 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Giant Tortoise",
    terrains: [
      { name: "Fresh Water", percentage: 60 },
      { name: "Snow", percentage: 30 },
      { name: "Grey Stone", percentage: 10 }
    ]
  },
  {
    name: "Saber Toothed Cat",
    terrains: [
      { name: "Grey Stone", percentage: 80 },
      { name: "Snow", percentage: 10 },
      { name: "Brown Stone", percentage: 5 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Woolly Mammoth",
    terrains: [
      { name: "Snow", percentage: 60 },
      { name: "Grey Stone", percentage: 20 },
      { name: "Brown Stone", percentage: 15 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
    {
    name: "Pacific Walrus",
    terrains: [
      { name: "Salt Water", percentage: 60 },
      { name: "Snow", percentage: 30 },
      { name: "Grey Stone", percentage: 10 }
    ]
  },
  {
    name: "Southern Sea Otter",
    terrains: [
      { name: "Salt Water", percentage: 90 },
      { name: "Grey Stone", percentage: 10 }
    ]
  },
  {
    name: "California Sea Lion",
    terrains: [
      { name: "Salt Water", percentage: 90 },
      { name: "Grey Stone", percentage: 10 }
    ]
  },
  {
    name: "Elephant Seal",
    terrains: [
      { name: "Salt Water", percentage: 75 },
      { name: "Grey Stone", percentage: 15 },
      { name: "Snow", percentage: 10 }
    ]
  },
  {
    name: "Woolly Rhinoceros",
    terrains: [
      { name: "Snow", percentage: 75 },
      { name: "Grey Stone", percentage: 15 },
      { name: "Brown Stone", percentage: 10 }
    ]
  },
   {
    name: "Apatosaurus",
    terrains: [
      { name: "Deciduous Floor", percentage: 75 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 10 },
      { name: "Grass", percentage: 5 }
    ]
  },
  {
    name: "Camptosaurus",
    terrains: [
      { name: "Coniferous Floor", percentage: 80 },
      { name: "Grass", percentage: 10 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Caudipteryx",
    terrains: [
      { name: "Rainforest Floor", percentage: 50 },
      { name: "Fresh Water", percentage: 30 },
      { name: "Grass", percentage: 20 }
    ]
  },
  {
    name: "Kentrosaurus",
    terrains: [
      { name: "Coniferous Floor", percentage: 70 },
      { name: "Fresh Water", percentage: 15 },
      { name: "Grass", percentage: 10 },
      { name: "Dirt", percentage: 5 }
    ]
  },
  {
    name: "Plesiosaurus",
    terrains: [
      { name: "Salt Water", percentage: 85 },
      { name: "Sand", percentage: 10 },
      { name: "Brown Stone", percentage: 5 }
    ]
  },
  {
    name: "Stegosaurus",
    terrains: [
      { name: "Coniferous Floor", percentage: 70 },
      { name: "Grass", percentage: 10 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Ankylosaurus",
    terrains: [
      { name: "Savannah Grass", percentage: 80 },
      { name: "Fresh Water", percentage: 10 },
      { name: "Sand", percentage: 5 },
      { name: "Dirt", percentage: 5 }
    ]
  },
  {
    name: "Deinosuchus",
    terrains: [
      { name: "Salt Water", percentage: 70 },
      { name: "Brown Stone", percentage: 20 },
      { name: "Dirt", percentage: 10 }
    ]
  },
  {
    name: "Gallimimus",
    terrains: [
      { name: "Coniferous Floor", percentage: 80 },
      { name: "Grass", percentage: 10 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Iguanodon",
    terrains: [
      { name: "Deciduous Floor", percentage: 75 },
      { name: "Grass", percentage: 15 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Triceratops",
    terrains: [
      { name: "Savannah Grass", percentage: 75 },
      { name: "Dirt", percentage: 15 },
      { name: "Sand", percentage: 5 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Arctic Wolf",
    terrains: [
      { name: "Grey Stone", percentage: 15 },
      { name: "Snow", percentage: 80 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Emperor Penguin",
    terrains: [
      { name: "Snow", percentage: 40 },
      { name: "Salt Water", percentage: 60 }
    ]
  },
  {
    name: "Magnet",
    terrains: [
      { name: "Snow", percentage: 50 },
      { name: "Salt Water", percentage: 50 }
    ]
  },
  {
    name: "Polar Bear",
    terrains: [
      { name: "Snow", percentage: 50 },
      { name: "Salt Water", percentage: 50 }
    ]
  },
  {
    name: "Reindeer",
    terrains: [
      { name: "Grass", percentage: 15 },
      { name: "Grey Stone", percentage: 10 },
      { name: "Snow", percentage: 75 }
    ]
  },
  {
    name: "Yeti",
    terrains: [
      { name: "Grey Stone", percentage: 10 },
      { name: "Snow", percentage: 90 }
    ]
  },
  {
    name: "Coelphysis",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Rainforest Floor", percentage: 85 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Herrerasaurus",
    terrains: [
      { name: "Grass", percentage: 10 },
      { name: "Rainforest Floor", percentage: 80 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Plateosaurus",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Fresh Water", percentage: 10 },
      { name: "Deciduous Floor", percentage: 85 }
    ]
  },
  {
    name: "Allosaurus",
    terrains: [
      { name: "Grass", percentage: 20 },
      { name: "Rainforest Floor", percentage: 70 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Giraffe",
    terrains: [
      { name: "Savannah Grass", percentage: 83 },
      { name: "Sand", percentage: 5 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 2 }
    ]
  },
  {
    name: "Greater Flamingo",
    terrains: [
      { name: "Savannah Grass", percentage: 10 },
      { name: "Sand", percentage: 10 },
      { name: "Dirt", percentage: 20 },
      { name: "Fresh Water", percentage: 60 }
    ]
  },
  {
    name: "Hippopotamus",
    terrains: [
      { name: "Savannah Grass", percentage: 15 },
      { name: "Dirt", percentage: 15 },
      { name: "Fresh Water", percentage: 70 }
    ]
  },
  {
    name: "Leopard",
    terrains: [
      { name: "Savannah Grass", percentage: 70 },
      { name: "Dirt", percentage: 5 },
      { name: "Rainforest Floor", percentage: 20 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Olive Baboon",
    terrains: [
      { name: "Savannah Grass", percentage: 90 },
      { name: "Dirt", percentage: 10 }
    ]
  },
  {
    name: "Ostrich",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Savannah Grass", percentage: 90 },
      { name: "Dirt", percentage: 5 }
    ]
  },
  {
    name: "Plains Zebra",
    terrains: [
      { name: "Savannah Grass", percentage: 95 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Red Kangaroo",
    terrains: [
      { name: "Savannah Grass", percentage: 60 },
      { name: "Sand", percentage: 8 },
      { name: "Dirt", percentage: 30 },
      { name: "Fresh Water", percentage: 2 }
    ]
  },
  {
    name: "Spotted Hyena",
    terrains: [
      { name: "Savannah Grass", percentage: 75 },
      { name: "Sand", percentage: 10 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Thomson's Gazelle",
    terrains: [
      { name: "Savannah Grass", percentage: 95 },
      { name: "Grey Stone", percentage: 5 }
    ]
  },
  {
    name: "Saltwater Crocodile",
    terrains: [
      { name: "Dirt", percentage: 20 },
      { name: "Salt Water", percentage: 80 }
    ]
  },
  {
    name: "African Buffalo",
    terrains: [
      { name: "Savannah Grass", percentage: 80 },
      { name: "Sand", percentage: 5 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "African Elephant",
    terrains: [
      { name: "Savannah Grass", percentage: 65 },
      { name: "Sand", percentage: 10 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 15 }
    ]
  },
  {
    name: "African Lion",
    terrains: [
      { name: "Savannah Grass", percentage: 80 },
      { name: "Sand", percentage: 5 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "African Warthog",
    terrains: [
      { name: "Savannah Grass", percentage: 20 },
      { name: "Sand", percentage: 5 },
      { name: "Dirt", percentage: 70 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "African Wild Dog",
    terrains: [
      { name: "Savannah Grass", percentage: 75 },
      { name: "Sand", percentage: 10 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Black Rhinoceros",
    terrains: [
      { name: "Savannah Grass", percentage: 85 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Blackbuck",
    terrains: [
      { name: "Savannah Grass", percentage: 95 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Cheetah",
    terrains: [
      { name: "Savannah Grass", percentage: 90 },
      { name: "Dirt", percentage: 10 }
    ]
  },
  {
    name: "Common Wildebeest",
    terrains: [
      { name: "Savannah Grass", percentage: 80 },
      { name: "Sand", percentage: 5 },
      { name: "Dirt", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Asian Black Bear",
    terrains: [
      { name: "Grey Stone", percentage: 25 },
      { name: "Snow", percentage: 25 },
      { name: "Coniferous Floor", percentage: 50 }
    ]
  },
  {
    name: "Giant Panda",
    terrains: [
      { name: "Grass", percentage: 8 },
      { name: "Grey Stone", percentage: 5 },
      { name: "Snow", percentage: 5 },
      { name: "Fresh Water", percentage: 2 },
      { name: "Coniferous Floor", percentage: 80 }
    ]
  },
  {
    name: "Ibex",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Brown Stone", percentage: 20 },
      { name: "Grey Stone", percentage: 70 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Llama",
    terrains: [
      { name: "Dirt", percentage: 10 },
      { name: "Grey Stone", percentage: 75 },
      { name: "Snow", percentage: 10 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Markhor",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Grey Stone", percentage: 60 },
      { name: "Snow", percentage: 30 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Mountain Lion",
    terrains: [
      { name: "Grass", percentage: 5 },
      { name: "Brown Stone", percentage: 70 },
      { name: "Grey Stone", percentage: 20 },
      { name: "Fresh Water", percentage: 5 }
    ]
  },
  {
    name: "Snow Leopard",
    terrains: [
      { name: "Brown Stone", percentage: 10 },
      { name: "Grey Stone", percentage: 30 },
      { name: "Snow", percentage: 60 }
    ]
  },
  {
    name: "Asian Elephant",
    terrains: [
      { name: "Grass", percentage: 20 },
      { name: "Rainforest Floor", percentage: 60 },
      { name: "Fresh Water", percentage: 20 }
    ]
  },
  {
    name: "Bengal Tiger",
    terrains: [
      { name: "Grass", percentage: 15 },
      { name: "Dirt", percentage: 5 },
      { name: "Rainforest Floor", percentage: 70 },
      { name: "Fresh Water", percentage: 10 }
    ]
  },
  {
    name: "Black Leopard",
    terrains: [
      { name: "Grass", percentage: 10 },
      { name: "Dirt", percentage: 5 },
      { name: "Rainforest Floor", percentage: 85 }
    ]
  },
]

animals_with_terrains.each do |animal_data|
  animal = Animal.find_or_create_by!(name: animal_data[:name])
  
  animal_data[:terrains].each do |terrain_data|
    terrain = Terrain.find_by!(name: terrain_data[:name])
    AnimalTerrain.find_or_create_by!(
      animal: animal,
      terrain: terrain,
      percentage: terrain_data[:percentage]
    )
  end

exhibit_sizes = [
  { animal_name: "Pacific Walrus", size1: 10, size2: 12, capacity: 2 },
  { animal_name: "Shortfin Mako Shark", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Southern Sea Otter", size1: 10, size2: 6, capacity: 3 },
  { animal_name: "Sperm Whale", size1: 10, size2: 13, capacity: 1 },
  { animal_name: "Tiger Shark", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "West Indian Manatee", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Green Moray Eel", size1: 10, size2: 8, capacity: 8 },
  { animal_name: "Green Sea Turtle", size1: 10, size2: 8, capacity: 2 },
  { animal_name: "Hammerhead Shark", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Harbor Porpoise", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Humpback Whale", size1: 10, size2: 18, capacity: 2 },
  { animal_name: "Lion's Mane Jelly", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Manta Ray", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Mermaid", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Narwhal", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Orca", size1: 10, size2: 18, capacity: 2 },
  { animal_name: "Woolly Rhinoceros", size1: 10, size2: 12, capacity: 2 },
  { animal_name: "Atlantic Swordfish", size1: 10, size2: 10, capacity: 4 },
  { animal_name: "Beluga", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Bluefin Tuna", size1: 10, size2: 5, capacity: 10 },
  { animal_name: "Bottlenose Dolphin", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Elephant Seal", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Giant Pacific Octopus", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Giant Squid", size1: 10, size2: 5, capacity: 1 },
  { animal_name: "Great Barracuda", size1: 10, size2: 6, capacity: 12 },
  { animal_name: "Great White Shark", size1: 10, size2: 8, capacity: 2 },
  { animal_name: "Lambeosaurus", size1: 10, size2: 18, capacity: 3 },
  { animal_name: "Spinosaurus", size1: 10, size2: 20, capacity: 2 },
  { animal_name: "Styracosaurus", size1: 15, size2: 20, capacity: 5 },
  { animal_name: "Triceratops", size1: 10, size2: 16, capacity: 2 },
  { animal_name: "Tyrannosaurus Rex", size1: 10, size2: 20, capacity: 1 },
  { animal_name: "Velociraptor", size1: 10, size2: 16, capacity: 2 },
  { animal_name: "Giant Ground Sloth", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Giant Tortoise", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Saber Toothed Cat", size1: 10, size2: 20, capacity: 4 },
  { animal_name: "Woolly Mammoth", size1: 10, size2: 15, capacity: 2 },
  { animal_name: "Apatosaurus", size1: 10, size2: 25, capacity: 1 },
  { animal_name: "Camptosaurus", size1: 10, size2: 10, capacity: 1 },
  { animal_name: "Caudipteryx", size1: 10, size2: 10, capacity: 4 },
  { animal_name: "Kentrosaurus", size1: 14, size2: 20, capacity: 4 },
  { animal_name: "Plesiosaurus", size1: 10, size2: 14, capacity: 2 },
  { animal_name: "Stegosaurus", size1: 10, size2: 12, capacity: 2 },
  { animal_name: "Ankylosaurus", size1: 10, size2: 18, capacity: 3 },
  { animal_name: "Deinosuchus", size1: 10, size2: 23, capacity: 1 },
  { animal_name: "Gallimimus", size1: 10, size2: 10, capacity: 4 },
  { animal_name: "Iguanodon", size1: 10, size2: 21, capacity: 3 },
  { animal_name: "Arctic Wolf", size1: 10, size2: 14, capacity: 4 },
  { animal_name: "Emperor Penguin", size1: 10, size2: 9, capacity: 6 },
  { animal_name: "Magnet", size1: 10, size2: 7, capacity: 1 },
  { animal_name: "Polar Bear", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Reindeer", size1: 10, size2: 18, capacity: 6 },
  { animal_name: "Yeti", size1: 10, size2: 10, capacity: 1 },
  { animal_name: "Coelphysis", size1: 10, size2: 20, capacity: 2 },
  { animal_name: "Herrerasaurus", size1: 10, size2: 20, capacity: 2 },
  { animal_name: "Plateosaurus", size1: 10, size2: 20, capacity: 2 },
  { animal_name: "Allosaurus", size1: 10, size2: 20, capacity: 1 },
  { animal_name: "Giraffe", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Greater Flamingo", size1: 10, size2: 6, capacity: 4 },
  { animal_name: "Hippopotamus", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Leopard", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Olive Baboon", size1: 10, size2: 9, capacity: 6 },
  { animal_name: "Ostrich", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Plains Zebra", size1: 10, size2: 6, capacity: 4 },
  { animal_name: "Red Kangaroo", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Spotted Hyena", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Thomson's Gazelle", size1: 10, size2: 6, capacity: 4 },
  { animal_name: "Saltwater Crocodile", size1: 10, size2: 6, capacity: 3 },
  { animal_name: "African Buffalo", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "African Elephant", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "African Lion", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "African Warthog", size1: 10, size2: 8, capacity: 6 },
  { animal_name: "African Wild Dog", size1: 10, size2: 21, capacity: 6 },
  { animal_name: "Black Rhinoceros", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Blackbuck", size1: 10, size2: 9, capacity: 6 },
  { animal_name: "Cheetah", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Common Wildebeest", size1: 10, size2: 9, capacity: 6 },
  { animal_name: "Bongo", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Chimpanzee", size1: 10, size2: 9, capacity: 6 },
  { animal_name: "Clouded Leopard", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Giant Anteater", size1: 10, size2: 5, capacity: 3 },
  { animal_name: "Jaguar", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Lowland Gorilla", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Mandrill", size1: 10, size2: 9, capacity: 6 },
  { animal_name: "Okapi", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "White Bengal Tiger", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "California Sea Lion", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Asian Black Bear", size1: 10, size2: 9, capacity: 2 },
  { animal_name: "Giant Panda", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Ibex", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Llama", size1: 10, size2: 10, capacity: 6 },
  { animal_name: "Markhor", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "Mountain Lion", size1: 10, size2: 6, capacity: 2 },
  { animal_name: "Snow Leopard", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Asian Elephant", size1: 10, size2: 8, capacity: 2 },
  { animal_name: "Bengal Tiger", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Black Leopard", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Gray Wolf", size1: 10, size2: 14, capacity: 4 },
  { animal_name: "Grizzly Bear", size1: 10, size2: 10, capacity: 2 },
  { animal_name: "Siberian Tiger", size1: 10, size2: 14, capacity: 4 },
  { animal_name: "Black Bear", size1: 10, size2: 7, capacity: 2 },
  { animal_name: "Moose", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Unicorn", size1: 10, size2: 12, capacity: 2 },
  { animal_name: "Dromedary Camel", size1: 10, size2: 4, capacity: 2 },
  { animal_name: "Gemsbok", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "American Bison", size1: 10, size2: 8, capacity: 4 },
  { animal_name: "American Bighorn Sheep", size1: 10, size2: 8, capacity: 4 },
  
]

exhibit_sizes.each do |exhibit_data|
  animal = Animal.find_by(name: exhibit_data[:animal_name])
  if animal
    ExhibitSize.find_or_create_by!(
      animal: animal,
      size1: exhibit_data[:size1],
      size2: exhibit_data[:size2],
      capacity: exhibit_data[:capacity]
    )
  else
    puts "Animal not found: #{exhibit_data[:animal_name]}"
  end
end
end