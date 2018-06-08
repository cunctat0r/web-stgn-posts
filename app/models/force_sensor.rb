class ForceSensor < ApplicationRecord
  belongs_to :post
  has_one :force_limits_set, inverse_of: :force_sensor, dependent: :destroy

  validates :sensor_number, presence: true
  validates :phase,
            presence: true,
            allow_blank: false,
            inclusion: { in: %w[A B C tros1 tros2] }
  validates :chain, presence: true

  accepts_nested_attributes_for :force_limits_set,
                                reject_if: :all_blank,
                                allow_destroy: true
end
