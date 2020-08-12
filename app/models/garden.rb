class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end

# @garden.plants => Array de toutes les plantes du jardin

