class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @flights = Flight.where(:departure_airport_id => params[:departure_airport_id], :arrival_airport_id => params[:arrival_airport_id], :flight_datetime => params[:flight_datetime])
    end
    
end
