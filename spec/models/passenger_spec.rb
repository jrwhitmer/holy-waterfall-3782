require 'rails_helper'
RSpec.describe Passenger, type: :model do
  describe 'relationships' do
    it { should have_many(:passenger_flights) }
    it { should have_many(:flights).through(:passenger_flights) }
  end
  before :each do

  end
  describe 'class methods' do
    describe '.' do
    end
  end
  describe 'instance methods' do
    describe '#' do
    end
  end
end
