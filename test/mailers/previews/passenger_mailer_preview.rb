# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
    def booking_email
        booking = Booking.new(number_of_passengers: "1", passenger_id: "12", flight_id: "6")
        PassengerMailer.with(booking: booking).booking_email
    end
end
