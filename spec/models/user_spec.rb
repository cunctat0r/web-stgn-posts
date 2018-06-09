# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(User.new(email: 'sp@example.com', 
                      password: 'a1s2d3', 
                      password_confirmation: 'a1s2d3')).to be_valid
    end
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }
  end

  context 'associations' do
    it { should have_many(:posts) }
  end
end
