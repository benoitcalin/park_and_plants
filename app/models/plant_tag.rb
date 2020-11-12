class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  validates :tag, uniqueness: { scope: :plant, message: 'already added'}
  # validates :plant, uniqueness: { scope: :tag, message: 'already added'}
end
