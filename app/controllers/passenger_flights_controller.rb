class PassengerFlightsController < ApplicationController

  def destroy
    @passflight = PassengerFlight.find(params[:id])
    @passflight.delete
  end

end
