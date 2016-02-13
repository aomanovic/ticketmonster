json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :start_date, :end_date, :event_category_id
  json.url event_url(event, format: :json)
end
