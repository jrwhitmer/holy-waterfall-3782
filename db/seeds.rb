# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@airline_1 = Airline.create!(name: "Delta")
@airline_2 = Airline.create!(name: "United")

@flight_1 = Flight.create!(number: "1111", date: "01/01/01", departure_city: "City 1", arrival_city: "City 1B", airline_id: @airline_1.id)
@flight_2 = Flight.create!(number: "2222", date: "02/02/02", departure_city: "City 2", arrival_city: "City 2B", airline_id: @airline_1.id)
@flight_3 = Flight.create!(number: "3333", date: "03/03/03", departure_city: "City 3", arrival_city: "City 3B", airline_id: @airline_2.id)
@flight_4 = Flight.create!(number: "4444", date: "04/04/04", departure_city: "City 4", arrival_city: "City 4B", airline_id: @airline_2.id)

@passenger_1 = Passenger.create!(name: "Passenger1", age: 1)
@passenger_2 = Passenger.create!(name: "Passenger2", age: 22)
@passenger_3 = Passenger.create!(name: "Passenger3", age: 33)
@passenger_4 = Passenger.create!(name: "Passenger4", age: 44)

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
