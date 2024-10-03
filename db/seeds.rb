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
  { name: "American Bighorn Sheep", dinosaur: false, marine: false, researched: false }
]

animals_to_add.each do |animal_data|
  Animal.create(animal_data) unless Animal.exists?(name: animal_data[:name])
end