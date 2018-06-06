class ForceLimitsSet < ApplicationRecord
  belongs_to :force_sensor, optional: true
end
