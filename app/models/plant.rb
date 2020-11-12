class Plant < ApplicationRecord
  belongs_to :garden
  # => .garden
  has_many :plant_tags, dependent: :destroy
  # => .plant_tags
  has_many :tags, through: :plant_tags
  # => .tags
end
