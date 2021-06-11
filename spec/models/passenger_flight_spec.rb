require 'rails_helper'
RSpec.describe PassengerFlight, type: :model do
  describe 'relationships' do
    it { should belong_to(:passenger) }
    it { should belong_to(:flight) }
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
