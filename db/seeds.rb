
Flight.create!([{
  flight_datetime: "2022-11-23 11:11:31",
  flight_duration: "11:30",
  departure_airport_id: 4,
  arrival_airport_id: 5
}])

p "Created #{Flight.count} Flights"
