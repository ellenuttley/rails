class Animal < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  scope :dinosaurs, -> { where(dinosaur: true) }
  scope :marine, -> { where(marine: true) }
  scope :researched, -> { where(researched: true) }
end