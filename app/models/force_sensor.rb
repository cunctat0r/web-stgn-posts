class ForceSensor < ApplicationRecord
  belongs_to :post
  has_many :force_limits_sets

  accepts_nested_attributes_for :force_limits_sets,
                                reject_if: :all_blank,
                                allow_destroy: true
end
