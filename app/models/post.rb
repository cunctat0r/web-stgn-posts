class Post < ApplicationRecord
  has_many :force_sensors, inverse_of: :post
  has_many :temperature_sensors

  accepts_nested_attributes_for :force_sensors,
                                reject_if: :all_blank,
                                allow_destroy: true
  accepts_nested_attributes_for :temperature_sensors,
                                reject_if: :all_blank,
                                allow_destroy: true
end
