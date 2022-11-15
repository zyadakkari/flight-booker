class RemoveDepartureAirportFromFlight < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_airport, :text
    remove_column :flights, :arrival_airport, :text
  end
end
