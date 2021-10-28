json.extract! booking, :id, :salon_id, :total_price, :created_at, :updated_at
json.services do
    json.array! booking.services, partial: "services/service", as: :service
end
