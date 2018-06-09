# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations' do
    it { should validate_presence_of(:num_tower) }
    it { should validate_presence_of(:line_name) }
  end

  context 'associations' do
    it { should have_many(:force_sensors) }
    it { should have_many(:temperature_sensors) }
    it { should accept_nested_attributes_for(:force_sensors) }
    it { should accept_nested_attributes_for(:temperature_sensors) }
    it { should belong_to(:user) }
  end
end
