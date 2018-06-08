# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ForceLimitsSet, type: :model do
  context 'validations' do
    it { should validate_presence_of(:free_weight) }
    it { should validate_presence_of(:detection_limit) }
    it { should validate_presence_of(:warning_limit) }
    it { should validate_presence_of(:alarm_limit) }
  end

  context 'associations' do
    it { should belong_to(:force_sensor) }
  end
end
