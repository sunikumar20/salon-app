class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :salon, null: false, foreign_key: true
      t.float :total_price

      t.timestamps
    end
  end
end
