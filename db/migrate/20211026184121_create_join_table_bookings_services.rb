class CreateJoinTableBookingsServices < ActiveRecord::Migration[6.0]
  def change
    create_join_table :bookings, :services do |t|
      # t.index [:booking_id, :service_id]
      # t.index [:service_id, :booking_id]
    end
  end
end
