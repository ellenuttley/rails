class AnimalTerrain < ApplicationRecord
  belongs_to :animal
  belongs_to :terrain
  validates :percentage, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :animal_id, uniqueness: { scope: :terrain_id }
  validate :total_percentage_cannot_exceed_100

  
  def self.create_or_update(attributes)
    animal_terrain = find_or_initialize_by(animal_id: attributes[:animal_id], terrain_id: attributes[:terrain_id])
    animal_terrain.update(attributes)
    animal_terrain
  end

  private

  def total_percentage_cannot_exceed_100
    total_percentage = animal.animal_terrains.sum(:percentage) - (percentage_was || 0) + percentage
    if total_percentage > 100
      errors.add(:percentage, "Total terrain percentage cannot exceed 100%")
    end
  end

end
