class Post < ApplicationRecord
  belongs_to :user
  has_many :force_sensors, inverse_of: :post, dependent: :destroy
  has_many :temperature_sensors, inverse_of: :post, dependent: :destroy

  validates :num_tower, presence: true
  validates :line_name, presence: true

  accepts_nested_attributes_for :force_sensors,
                                reject_if: :all_blank,
                                allow_destroy: true
  accepts_nested_attributes_for :temperature_sensors,
                                reject_if: :all_blank,
                                allow_destroy: true
end
