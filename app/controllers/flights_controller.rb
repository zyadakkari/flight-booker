class FlightsController < ApplicationController
    def index
        if params[:flight].blank?
            return
        else
            @flights = params[:flight]
        end
    end

    private

    def flight_params
        params.require(:flight).permit(:departure_airport_id, :arrival_airport_id)
    end

    def search_params
        params.require(:flight).permit(:departure_airport, :arrival_airport, :number_of_passengers)
    end
end
