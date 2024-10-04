class Animal < ApplicationRecord
  has_many :animal_terrains
  has_many :terrains, through: :animal_terrains
  
  validate :cannot_be_marine_and_dinosaur
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
      errors.add(:base, "Cannot be both marine and dinosaur")
    end
  end
end