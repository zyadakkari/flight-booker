class BookingsController < ApplicationController
    def new
        @flight = Flight.where(:flight_id => params[:flight_id])
        @booking = Booking.new()
    end

    def create
        @booking = Booking.new(booking_params)
        @passenger = @booking.build_passenger(:name => params[:booking][:passengers][:name], :email => params[:booking][:passengers][:email])
        if @booking.save
          PassengerMailer.with(booking: @booking).booking_email.deliver_later
          redirect_to @booking, allow_other_host: true
        else
          render :new, status: :unprocessable_entity
        end
    end

    def show
    end

    private

    def booking_params
        params.require(:booking).permit(:id, :number_of_passengers, :flight_id, passenger_attributes: [:id, :name, :email])
    end
end
