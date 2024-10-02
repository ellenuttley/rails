class Animal < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  scope :dinosaurs, -> { where(dinosaur: true) }
end