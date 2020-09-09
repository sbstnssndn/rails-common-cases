json.extract! appointment, :id, :date, :hour, :comments, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
