require 'rails_helper'

RSpec.describe Flight, type: :model do
  describe 'relationships' do
    it {should belong_to(:airline)}
    it {should have_many(:passenger_flights)}
    it {should have_many(:passengers).through(:passenger_flights)}
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
