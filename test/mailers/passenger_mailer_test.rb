require "test_helper"

class PassengerMailerTest < ActionMailer::TestCase
    test "booking_email" do
        mail = PassengerMailer.booking_email("akkarizyad@gmail.com", "from@example.com", Time.now)
        assert_emails 1 do
            mail.deliver_now
        end

        assert_equal ["akkarizyad@gmail.com"], mail.from
        assert_equal ["from@example.com"], mail.to
        assert_equal "Booking confirmation", mail.subject
        assert_equal read_fixture("booking_email").join, mail.body.to_s
    end
end
