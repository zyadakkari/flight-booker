class PassengerMailer < ApplicationMailer

    def booking_email
        @booking = params[:booking]
        @passenger = Passenger.find(@booking.passenger_id)
        @flight = Flight.find(@booking.flight_id)
        mail(to: @passenger.email, subject: "Booking confirmation")
    end
end
