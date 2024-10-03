class Animal < ApplicationRecord
  validate :cannot_be_marine_and_dinosaur
  validates :name, presence: true, uniqueness: true

  before_save :capitalize_name

  scope :dinosaurs, -> { where(dinosaur: true) }
  scope :marine, -> { where(marine: true) }
  scope :researched, -> { where(researched: true) }

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