class Terrain < ApplicationRecord
  has_many :animal_terrains
  has_many :animals, through: :animal_terrains

  validates :name, presence: true, uniqueness: true
end
