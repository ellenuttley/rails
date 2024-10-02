class Animal < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  before_save :capitalize_name

  scope :dinosaurs, -> { where(dinosaur: true) }
  scope :marine, -> { where(marine: true) }
  scope :researched, -> { where(researched: true) }

  private
  def capitalize_name
    self.name = name.titleize if name.present?
  end
end