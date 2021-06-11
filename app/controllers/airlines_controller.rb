class AirlinesController < ApplicationController

  def show
    @airline = Airline.find(params[:id])
    @unique_adult_passengers = @airline.unique_adult_passengers
  end

end
