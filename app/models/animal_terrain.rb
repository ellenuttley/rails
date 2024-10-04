class AnimalTerrain < ApplicationRecord
  belongs_to :animal
  belongs_to :terrain
  validates :percentage, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
