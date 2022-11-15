class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.text :departure_airport
      t.text :arrival_airport
      t.datetime :flight_datetime
      t.time :flight_duration

      t.timestamps
    end
  end
end
