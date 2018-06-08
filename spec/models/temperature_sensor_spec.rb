# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TemperatureSensor, type: :model do
  context 'validations' do
    it { should validate_presence_of(:sensor_number) }
    it { should validate_presence_of(:phase) }
    it { should validate_presence_of(:chain) }
  end

  context 'associations' do
    it { should belong_to(:post) }
  end
end
