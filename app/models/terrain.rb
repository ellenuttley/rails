class Terrain < ApplicationRecord
  has_many :animal_terrains
  has_many :animals, through: :animal_terrains
end
