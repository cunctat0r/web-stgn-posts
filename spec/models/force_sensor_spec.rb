# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ForceSensor, type: :model do
  context 'validations' do
    it { should validate_presence_of(:sensor_number) }
    it { should validate_presence_of(:phase) }
    it { should validate_presence_of(:chain) }
  end

  context 'associations' do
    it { should belong_to(:post) }
    it { should have_one(:force_limits_set) }
    it { should accept_nested_attributes_for(:force_limits_set) }
  end
end
