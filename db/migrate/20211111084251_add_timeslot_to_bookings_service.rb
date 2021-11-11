class AddTimeslotToBookingsService < ActiveRecord::Migration[6.0]
  def change
  	add_column :bookings_services, :timeslot, :datetime
  end
end
