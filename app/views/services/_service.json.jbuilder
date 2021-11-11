json.extract! service, :id, :name, :description, :duration, :price, :salon_id, :created_at, :updated_at
json.available_timeslot do
	json.array! round_to_15_minutes - service.bookings_services.pluck(:timeslot).compact
end