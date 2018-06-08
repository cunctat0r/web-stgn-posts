class TemperatureSensor < ApplicationRecord
  belongs_to :post

  validates :sensor_number, presence: true
  validates :phase,
            presence: true,
            allow_blank: false,
            inclusion: { in: %w[A B C tros1 tros2] }
  validates :chain, presence: true
end
