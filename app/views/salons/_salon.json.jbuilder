json.extract! salon, :id, :company_name, :gstin, :pan_number, :address, :created_at, :updated_at
json.services do
    json.array! salon.services, partial: "services/service", as: :service
end
