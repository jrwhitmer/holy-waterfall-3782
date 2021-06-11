class PassengerFlightsController < ApplicationController

  def destroy
    @passenger = Passenger.find(params[:id])
    @flight = Flight.find(params[:flight_id])
    @passflight = PassengerFlight.where('flight_id = ?', @flight.id, 'passenger_id = ?', @passenger.id)
    PassengerFlight.delete(@passflight)
  end

end
