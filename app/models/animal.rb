class Animal < ApplicationRecord
  has_one :exhibit_size, dependent: :destroy
  has_many :animal_terrains
  has_many :terrains, through: :animal_terrains
  
  validate :cannot_be_marine_and_dinosaur
  validate :total_terrain_percentage_cannot_exceed_100
  validates :name, presence: true, uniqueness: true

  before_save :capitalize_name

  scope :dinosaurs, -> { where(dinosaur: true) }
  scope :marine, -> { where(marine: true) }
  scope :researched, -> { where(researched: true) }

  def add_terrain(terrain, percentage)
    AnimalTerrain.create_or_update(animal: self, terrain: terrain, percentage: percentage)
  end

  private
  def capitalize_name
    self.name = name.titleize if name.present?
  end

  def cannot_be_marine_and_dinosaur
    if marine && dinosaur
      errors.add(:base, "ERROR : Animal cannot be both marine and dinosaur")
    end
  end

  def total_terrain_percentage_cannot_exceed_100
    total_percentage = animal_terrains.sum(:percentage)
    if total_percentage > 100
      errors.add(:base, "Total terrain percentage cannot exceed 100%")
    end
  end
end