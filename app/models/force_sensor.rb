class ForceSensor < ApplicationRecord
  belongs_to :post
  has_one :force_limits_set, dependent: :destroy

  accepts_nested_attributes_for :force_limits_set,
                                reject_if: :all_blank,
                                allow_destroy: true
end
