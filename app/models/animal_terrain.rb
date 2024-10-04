class AnimalTerrain < ApplicationRecord
  belongs_to :animal
  belongs_to :terrain
  validates :percentage, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :animal_id, uniqueness: { scope: :terrain_id }

  def self.create_or_update(attributes)
    animal_terrain = find_or_initialize_by(animal_id: attributes[:animal_id], terrain_id: attributes[:terrain_id])
    animal_terrain.update(attributes)
    animal_terrain
  end
end
