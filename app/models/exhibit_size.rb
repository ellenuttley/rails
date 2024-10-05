class ExhibitSize < ApplicationRecord
  belongs_to :animal
  validates :size1, :size2, :capacity, presence: true, numericality: { greater_than: 0 }
end