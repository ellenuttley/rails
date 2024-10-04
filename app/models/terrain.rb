class Terrain < ApplicationRecord
  has_many :animal_terrains
  has_many :animals, through: :animal_terrains

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  before_save :capitalize_name

  private
  def capitalize_name
    self.name = name.titleize if name.present?
  end
end
