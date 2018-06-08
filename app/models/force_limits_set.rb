class ForceLimitsSet < ApplicationRecord
  belongs_to :force_sensor, optional: true

  validates :free_weight, presence: true
  validates :detection_limit, presence: true
  validates :warning_limit, presence: true
  validates :alarm_limit, presence: true

end
