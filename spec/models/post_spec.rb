# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(Post.new(line_name: 'Д2', num_tower: '1')).to be_valid
    end
    it { should validate_presence_of(:num_tower) }
    it { should validate_presence_of(:line_name) }
  end

  context 'associations' do
    it { should have_many(:force_sensors) }
    it { should have_many(:temperature_sensors) }
    it { should accept_nested_attributes_for(:force_sensors) }
    it { should accept_nested_attributes_for(:temperature_sensors) }
  end
end
