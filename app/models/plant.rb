class Plant < ApplicationRecord
  has_many :schedules
  has_many :plant_counts
end
