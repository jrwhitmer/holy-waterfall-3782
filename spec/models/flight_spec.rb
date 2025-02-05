require 'rails_helper'

RSpec.describe Flight, type: :model do
  describe 'relationships' do
    it {should belong_to(:airline)}
    it {should have_many(:passenger_flights)}
    it {should have_many(:passengers).through(:passenger_flights)}
  end
  before :each do
    @airline_1 = Airline.create!(name: "Delta")
    @airline_2 = Airline.create!(name: "United")

    @flight_1 = Flight.create!(number: "1111", date: "01/01/01", departure_city: "City 1", arrival_city: "City 1B", airline_id: @airline_1.id)
    @flight_2 = Flight.create!(number: "2222", date: "02/02/02", departure_city: "City 2", arrival_city: "City 2B", airline_id: @airline_1.id)
    @flight_3 = Flight.create!(number: "3333", date: "03/03/03", departure_city: "City 3", arrival_city: "City 3B", airline_id: @airline_2.id)
    @flight_4 = Flight.create!(number: "4444", date: "04/04/04", departure_city: "City 4", arrival_city: "City 4B", airline_id: @airline_2.id)

    @passenger_1 = Passenger.create!(name: "Passenger 1", age: 1)
    @passenger_2 = Passenger.create!(name: "Passenger 2", age: 22)
    @passenger_3 = Passenger.create!(name: "Passenger 3", age: 33)
    @passenger_4 = Passenger.create!(name: "Passenger 4", age: 44)

    @passenger_flight_1 = PassengerFlight.create!(passenger_id: @passenger_1.id, flight_id: @flight_1.id)
    @passenger_flight_2 = PassengerFlight.create!(passenger_id: @passenger_1.id, flight_id: @flight_2.id)
    @passenger_flight_3 = PassengerFlight.create!(passenger_id: @passenger_2.id, flight_id: @flight_1.id)
    @passenger_flight_4 = PassengerFlight.create!(passenger_id: @passenger_2.id, flight_id: @flight_2.id)
    @passenger_flight_5 = PassengerFlight.create!(passenger_id: @passenger_2.id, flight_id: @flight_3.id)
    @passenger_flight_6 = PassengerFlight.create!(passenger_id: @passenger_3.id, flight_id: @flight_2.id)
    @passenger_flight_7 = PassengerFlight.create!(passenger_id: @passenger_3.id, flight_id: @flight_3.id)
    @passenger_flight_8 = PassengerFlight.create!(passenger_id: @passenger_3.id, flight_id: @flight_4.id)
    @passenger_flight_9 = PassengerFlight.create!(passenger_id: @passenger_4.id, flight_id: @flight_3.id)
    @passenger_flight_10 = PassengerFlight.create!(passenger_id: @passenger_4.id, flight_id: @flight_4.id)
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
